using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
using System.Linq;
using System.Globalization;

namespace RoadCraft_Vehicle_Editorv2.Parser
{
    #region Node Definitions
    public abstract class ClsNode
    {
        public string LeadingWhitespace { get; set; } = "";
        public string TrailingWhitespace { get; set; } = "";
        public abstract string ToClsString();
    }

    public class ClsProperty : ClsNode
    {
        public string Key { get; set; } = string.Empty;
        public ClsNode Value { get; set; } = new ClsValue("");
        public string WhitespaceAroundEquals { get; set; } = " = ";

        public override string ToClsString()
        {
            var valueString = Value.ToClsString();
            if (Value is ClsObject || Value is ClsList)
            {
                return $"{LeadingWhitespace}{Key}{WhitespaceAroundEquals}{valueString}{TrailingWhitespace}";
            }
            return $"{LeadingWhitespace}{Key}{WhitespaceAroundEquals}{valueString.Trim()}{TrailingWhitespace}";
        }
    }

    public class ClsRawLine : ClsNode
    {
        public string Content { get; set; } = string.Empty;
        public override string ToClsString() => Content;
    }

    public class ClsValue : ClsNode
    {
        private object _value;
        public bool IsQuoted { get; set; }

        public object GetValue() => _value;
        public void SetValue(object newValue) => _value = newValue;

        public ClsValue(object value, bool isQuoted = false)
        {
            _value = value;
            IsQuoted = isQuoted;
        }

        public override string ToClsString()
        {
            string stringValue = _value?.ToString() ?? "";
            if (_value is bool b)
            {
                stringValue = b ? "True" : "False";
            }
            else if (_value is double d)
            {
                stringValue = d.ToString("0.################", CultureInfo.InvariantCulture);
                if (string.IsNullOrEmpty(stringValue)) stringValue = "0";
            }
            else if (_value is float f)
            {
                stringValue = f.ToString("0.################", CultureInfo.InvariantCulture);
                if (string.IsNullOrEmpty(stringValue)) stringValue = "0";
            }

            if (IsQuoted)
            {
                return $"{LeadingWhitespace}\"{stringValue}\"{TrailingWhitespace}";
            }
            return $"{LeadingWhitespace}{stringValue}{TrailingWhitespace}";
        }
    }

    public class ClsObject : ClsNode
    {
        public List<ClsNode> Children { get; set; } = new List<ClsNode>();
        public string OpeningBrace { get; set; } = "{";
        public string ClosingBraceLine { get; set; } = "}";

        public override string ToClsString()
        {
            var sb = new StringBuilder();
            sb.Append(OpeningBrace);

            if (Children.Any())
            {
                sb.AppendLine();
                var childLines = Children.Select(c => c.ToClsString());
                sb.Append(string.Join(Environment.NewLine, childLines));

                // Ensure there is a newline before the closing brace if there was content
                if (!sb.ToString().EndsWith(Environment.NewLine))
                {
                    sb.AppendLine();
                }
            }
            else // For empty objects, add a newline to format it correctly
            {
                sb.AppendLine();
            }

            sb.Append(ClosingBraceLine);
            return sb.ToString();
        }
    }

    public class ClsList : ClsNode
    {
        public List<ClsNode> Items { get; set; } = new List<ClsNode>();
        public string OpeningBracket { get; set; } = "[";
        public string ClosingBracketLine { get; set; } = "]";

        public override string ToClsString()
        {
            var sb = new StringBuilder();
            sb.Append(OpeningBracket);
            if (Items.Any())
            {
                sb.AppendLine();
                var itemStrings = Items.Select(i => i.ToClsString());
                sb.Append(string.Join(Environment.NewLine, itemStrings));
                if (!sb.ToString().EndsWith(Environment.NewLine) && !string.IsNullOrEmpty(ClosingBracketLine))
                {
                    sb.AppendLine();
                }
            }
            sb.Append(ClosingBracketLine);
            return sb.ToString();
        }
    }
    #endregion

    public class ClsParser
    {
        private readonly List<ClsNode> _rootNodes = new List<ClsNode>();
        private readonly string[] _lines;

        public ClsParser(string fileContent)
        {
            _lines = fileContent.Replace("\r\n", "\n").Replace("\r", "\n").Split('\n');
            Parse();
        }

        public object? GetValue(string path) => GetNodes(path).OfType<ClsValue>().FirstOrDefault()?.GetValue();
        public IEnumerable<object> GetValues(string path) => GetNodes(path).OfType<ClsValue>().Select(v => v.GetValue());
        public bool SetValue(string path, object newValue)
        {
            var node = GetNodes(path).FirstOrDefault();
            if (node is ClsValue valueNode)
            {
                valueNode.SetValue(newValue);
                return true;
            }
            return false;
        }
        public string ToClsString() => string.Join(Environment.NewLine, _rootNodes.Select(node => node.ToClsString()));

        public IEnumerable<ClsObject> FindObjectsInListByProperty(string listPath, string propertyName, object propertyValue)
        {
            var items = GetNodes(listPath + "[*]").OfType<ClsObject>();
            foreach (var obj in items)
            {
                var prop = obj.Children
                    .OfType<ClsProperty>()
                    .FirstOrDefault(p => p.Key == propertyName);

                if (prop != null && prop.Value is ClsValue val && Equals(val.GetValue()?.ToString()?.Trim('"'), propertyValue.ToString()?.Trim('"')))
                {
                    yield return obj;
                }
            }
        }

        public ClsObject? FindObjectInListByProperty(string listPath, string propertyName, object propertyValue)
        {
            return FindObjectsInListByProperty(listPath, propertyName, propertyValue).FirstOrDefault();
        }

        public int? FindObjectIndexInListByProperty(string listPath, string propertyName, object propertyValue)
        {
            var items = GetNodes(listPath).OfType<ClsList>().FirstOrDefault()?.Items.OfType<ClsObject>().ToList();
            if (items == null) return null;

            for (int i = 0; i < items.Count; i++)
            {
                var obj = items[i];
                var prop = obj.Children
                    .OfType<ClsProperty>()
                    .FirstOrDefault(p => p.Key == propertyName);

                if (prop != null && prop.Value is ClsValue val && Equals(val.GetValue()?.ToString()?.Trim('"'), propertyValue.ToString()?.Trim('"')))
                {
                    return i;
                }
            }
            return null;
        }


        public object? GetValueInObject(ClsObject obj, string propertyName)
        {
            var prop = obj.Children
                .OfType<ClsProperty>()
                .FirstOrDefault(p => p.Key == propertyName);

            if (prop != null && prop.Value is ClsValue val)
                return val.GetValue();

            return null;
        }

        private IEnumerable<ClsNode> GetNodes(string path)
        {
            var pathQueue = new Queue<string>(path.Split('.'));
            return FindNodesRecursive(_rootNodes, pathQueue);
        }

        private IEnumerable<ClsNode> FindNodesRecursive(IEnumerable<ClsNode> currentLevel, Queue<string> pathQueue)
        {
            if (!pathQueue.Any()) return currentLevel;
            var part = pathQueue.Dequeue();
            string key = part;
            int? index = null;
            bool isWildcard = part.EndsWith("[*]");

            if (isWildcard)
            {
                key = part.Substring(0, part.Length - 3);
            }
            else
            {
                var indexMatch = Regex.Match(part, @"^(.*)\[(\d+)\]$");
                if (indexMatch.Success)
                {
                    key = indexMatch.Groups[1].Value;
                    index = int.Parse(indexMatch.Groups[2].Value);
                }
            }

            // *** FIX START ***
            // This logic was incorrect. It needs to search within the children of objects in the current level, not just for properties directly.
            var propsFromCurrentLevel = currentLevel.OfType<ClsProperty>();
            var propsFromChildrenOfObjects = currentLevel.OfType<ClsObject>().SelectMany(o => o.Children.OfType<ClsProperty>());
            var allProps = propsFromCurrentLevel.Concat(propsFromChildrenOfObjects);
            var matchingProp = allProps.FirstOrDefault(p => p.Key == key);
            // *** FIX END ***

            if (matchingProp == null) return Enumerable.Empty<ClsNode>();

            var value = matchingProp.Value;

            if (isWildcard)
            {
                if (value is ClsList list)
                {
                    return list.Items.SelectMany(item => FindNodesRecursive(new[] { item }, new Queue<string>(pathQueue)));
                }
            }
            else if (index.HasValue)
            {
                if (value is ClsList list && index.Value < list.Items.Count)
                {
                    return FindNodesRecursive(new[] { list.Items[index.Value] }, pathQueue);
                }
            }
            else
            {
                return FindNodesRecursive(new[] { value }, pathQueue);
            }
            return Enumerable.Empty<ClsNode>();
        }

        private void Parse()
        {
            int i = 0;
            while (i < _lines.Length)
            {
                if (string.IsNullOrWhiteSpace(_lines[i]))
                {
                    i++;
                    continue;
                }

                var node = ParseNode(ref i);
                if (node != null)
                {
                    _rootNodes.Add(node);
                }
            }
        }

        private ClsNode? ParseNode(ref int lineIndex)
        {
            if (lineIndex >= _lines.Length) return null;

            var line = _lines[lineIndex];

            if (line.Contains("="))
            {
                return ParseProperty(ref lineIndex);
            }
            else
            {
                lineIndex++;
                return new ClsRawLine { Content = line };
            }
        }

        private ClsProperty ParseProperty(ref int lineIndex)
        {
            var line = _lines[lineIndex];
            var parts = line.Split(new[] { '=' }, 2);
            var prop = new ClsProperty
            {
                LeadingWhitespace = Regex.Match(line, @"^\s*").Value,
                Key = parts[0].Trim()
            };
            var match = Regex.Match(line, @"(\s*=\s*)");
            prop.WhitespaceAroundEquals = match.Success ? match.Value : " = ";

            string valuePart = parts.Length > 1 ? parts[1].Trim() : "";

            if (valuePart.StartsWith("{"))
            {
                prop.Value = ParseObject(ref lineIndex, line);
            }
            else if (valuePart.StartsWith("["))
            {
                prop.Value = ParseList(ref lineIndex, line);
            }
            else
            {
                prop.Value = ParseValue(parts[1]);
                lineIndex++;
            }
            return prop;
        }

        private ClsObject ParseObject(ref int lineIndex, string openingLine)
        {
            var obj = new ClsObject();
            lineIndex++;
            while (lineIndex < _lines.Length)
            {
                var trimmedLine = _lines[lineIndex].Trim();
                if (trimmedLine.StartsWith("}"))
                {
                    obj.ClosingBraceLine = _lines[lineIndex];
                    lineIndex++;
                    break;
                }
                var node = ParseNode(ref lineIndex);
                if (node != null) obj.Children.Add(node);
            }
            return obj;
        }

        private ClsList ParseList(ref int lineIndex, string openingLine)
        {
            var list = new ClsList();
            lineIndex++;
            while (lineIndex < _lines.Length)
            {
                var trimmedLine = _lines[lineIndex].Trim();
                if (trimmedLine.StartsWith("]"))
                {
                    list.ClosingBracketLine = _lines[lineIndex];
                    lineIndex++;
                    break;
                }
                if (trimmedLine.StartsWith("{"))
                {
                    list.Items.Add(ParseObject(ref lineIndex, _lines[lineIndex]));
                }
                else
                {
                    list.Items.Add(ParseValue(_lines[lineIndex]));
                    lineIndex++;
                }
            }
            return list;
        }

        private ClsValue ParseValue(string valueString)
        {
            var trimmedValue = valueString.Trim().TrimEnd(',');
            string leadingWhitespace = Regex.Match(valueString, @"^\s*").Value;
            string trailingWhitespace = Regex.Match(valueString, @"\s*[,]?$").Value;
            bool isQuoted = trimmedValue.StartsWith("\"") && trimmedValue.EndsWith("\"");

            if (isQuoted)
            {
                string unquoted = trimmedValue.Length > 1 ? trimmedValue.Substring(1, trimmedValue.Length - 2) : "";
                return new ClsValue(unquoted, true) { LeadingWhitespace = leadingWhitespace, TrailingWhitespace = trailingWhitespace };
            }

            if (int.TryParse(trimmedValue, NumberStyles.Any, CultureInfo.InvariantCulture, out int intVal)) return new ClsValue(intVal) { LeadingWhitespace = leadingWhitespace, TrailingWhitespace = trailingWhitespace };
            if (float.TryParse(trimmedValue, NumberStyles.Any, CultureInfo.InvariantCulture, out float floatVal)) return new ClsValue(floatVal) { LeadingWhitespace = leadingWhitespace, TrailingWhitespace = trailingWhitespace };
            if (double.TryParse(trimmedValue, NumberStyles.Any, CultureInfo.InvariantCulture, out double doubleVal)) return new ClsValue(doubleVal) { LeadingWhitespace = leadingWhitespace, TrailingWhitespace = trailingWhitespace };
            if (bool.TryParse(trimmedValue, out bool boolVal)) return new ClsValue(boolVal) { LeadingWhitespace = leadingWhitespace, TrailingWhitespace = trailingWhitespace };

            return new ClsValue(trimmedValue) { LeadingWhitespace = leadingWhitespace, TrailingWhitespace = trailingWhitespace };
        }
    }
}
