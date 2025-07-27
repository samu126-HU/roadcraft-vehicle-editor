using System.Drawing;
using System.Globalization;
using System.Windows.Forms;

namespace RoadCraft_Vehicle_Editor_v2___new_edition
{
    /// <summary>
    /// Utility class for shared UI components and numeric input handling
    /// </summary>
    public static class UIUtils
    {
        private static readonly Font _defaultFont = new Font(GlobalConstants.Fonts.PrimaryFontFamily, GlobalConstants.Fonts.DefaultFontSize);
        
        /// <summary>
        /// Creates a numeric TextBox with validation for int/double values
        /// </summary>
        public static TextBox CreateNumericTextBox(Point location, Size size, object? currentValue)
        {
            var textBox = new TextBox
            {
                Location = location,
                Size = size,
                Text = currentValue?.ToString() ?? string.Empty,
                Font = _defaultFont,
                BorderStyle = BorderStyle.FixedSingle,
                BackColor = Color.White,
                ForeColor = GlobalConstants.Colors.TextPrimary
            };

            // Add KeyPress event to prevent letters
            textBox.KeyPress += (sender, e) =>
            {
                // Allow control keys (backspace, delete, etc.)
                if (char.IsControl(e.KeyChar))
                {
                    return;
                }

                // Allow digits
                if (char.IsDigit(e.KeyChar))
                {
                    return;
                }

                // Allow one decimal point for floating point numbers
                if (e.KeyChar == '.' || e.KeyChar == ',')
                {
                    var currentText = textBox.Text;
                    // Only allow if there's no decimal point already
                    if (!currentText.Contains('.') && !currentText.Contains(','))
                    {
                        return;
                    }
                }

                // Allow minus sign at the beginning
                if (e.KeyChar == '-')
                {
                    var currentText = textBox.Text;
                    var selectionStart = textBox.SelectionStart;
                    // Only allow if at the beginning and no minus sign already
                    if (selectionStart == 0 && !currentText.Contains('-'))
                    {
                        return;
                    }
                }

                // Allow plus sign at the beginning
                if (e.KeyChar == '+')
                {
                    var currentText = textBox.Text;
                    var selectionStart = textBox.SelectionStart;
                    // Only allow if at the beginning and no sign already
                    if (selectionStart == 0 && !currentText.Contains('+') && !currentText.Contains('-'))
                    {
                        return;
                    }
                }

                // Block all other characters
                e.Handled = true;
            };

            // Add visual feedback for validation state
            textBox.TextChanged += (s, e) =>
            {
                var text = textBox.Text;
                
                // Allow empty text
                if (string.IsNullOrEmpty(text))
                {
                    textBox.BackColor = Color.White;
                    return;
                }

                // Try to parse as number and validate
                object? numericValue = TryParseNumericValue(text);
                
                if (numericValue != null)
                {
                    // Valid numeric value
                    textBox.BackColor = Color.White;
                }
                else
                {
                    // Invalid numeric value
                    textBox.BackColor = GlobalConstants.Colors.ErrorBackground;
                }
            };

            return textBox;
        }

        /// <summary>
        /// Tries to parse a string as either int or double, returning the most appropriate type
        /// </summary>
        public static object? TryParseNumericValue(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return null;

            // Normalize decimal separators
            text = text.Replace(',', '.');

            // Try to parse as integer first (if no decimal point)
            if (!text.Contains('.'))
            {
                if (long.TryParse(text, out long longValue))
                {
                    // Return as int if it fits, otherwise as long
                    if (longValue >= int.MinValue && longValue <= int.MaxValue)
                    {
                        return (int)longValue;
                    }
                    return longValue;
                }
            }

            // Try to parse as double
            if (double.TryParse(text, NumberStyles.Float, 
                CultureInfo.InvariantCulture, out double doubleValue))
            {
                return doubleValue;
            }

            return null;
        }

        /// <summary>
        /// Checks if a type is numeric (int, long, float, double, decimal, etc.)
        /// </summary>
        public static bool IsNumericType(Type? type)
        {
            if (type == null) return false;
            
            return type == typeof(int) || type == typeof(long) || type == typeof(short) || type == typeof(byte) ||
                   type == typeof(uint) || type == typeof(ulong) || type == typeof(ushort) || type == typeof(sbyte) ||
                   type == typeof(float) || type == typeof(double) || type == typeof(decimal);
        }

        /// <summary>
        /// Dispose static fonts when the application shuts down (call from Program.cs)
        /// </summary>
        public static void DisposeSharedResources()
        {
            _defaultFont?.Dispose();
        }
    }
}