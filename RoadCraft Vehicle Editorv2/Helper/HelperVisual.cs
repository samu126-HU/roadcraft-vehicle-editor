using RoadCraft_Vehicle_Editorv2.Parser;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static RoadCraft_Vehicle_Editorv2.Helper.HelperBackend;

namespace RoadCraft_Vehicle_Editorv2.Helper
{
    public class HelperVisual
    {
        //categorize
        public static string CategorizeVehicle(string fileName)
        {
            string name = fileName.ToLowerInvariant();
            //filter NPC vehicles/unusable vehicles
            string[] npcKeywords = { "nota_allegro", "civilian", "4317dl_cargo_old", "voron_3327_dumptruck" };
            if (npcKeywords.Any(k => name.Contains(k)))
                return "Other";

            if (name.Contains("dozer")) return "Dozers";
            if (name.Contains("crane")) return "Cranes";
            if (name.Contains("roller")) return "Rollers";
            if (name.Contains("paver")) return "Pavers";
            if (name.Contains("scout")) return "Scouts";
            if (name.Contains("dumptruck")) return "Dumptrucks";
            if (name.Contains("scout")) return "Scouts";
            if ((name.Contains("cargo") || name.Contains("transporter")) && !name.Contains("trailer")) return "Cargo"; //filter out wayfarer trailer as that is not the main

            if (name.Contains("harvester") ||
                name.Contains("mulcher") ||
                name.Contains("wood") ||
                name.Contains("forwarder")) return "Forestry";

            if (name.Contains("cable_layer") ||
                name.Contains("mobile_scalper") ||
                name.Contains("mob")) return "Special";

            return "Other";
        }

        //prettify
        public static string PrettyVehicleName(string fileName)
        {
            if (fileName.StartsWith("auto_"))
                fileName = fileName[5..];
            fileName = fileName.Replace("old", "Rusty")
                               .Replace("res", "Restored")
                               .Replace("new", "", StringComparison.OrdinalIgnoreCase)
                               .Replace("_", " ");
            return CultureInfo.CurrentCulture.TextInfo.ToTitleCase(fileName.ToLower());
        }

        public class ListBoxItem
        {
            public string Display { get; }
            public string Value { get; }
            public ListBoxItem(string display, string value)
            {
                Display = display;
                Value = value;
            }
            public override string ToString() => Display;
        }

        public class CategoryHeaderItem
        {
            public string Category { get; }
            public CategoryHeaderItem(string category) => Category = category;
            public override string ToString() => Category;
        }

        // save 3 options: file, pak, folder
        public static class SaveOptionDialog
        {
            public static SaveOption ShowDialog(string fileName)
            {
                using (var form = new Form())
                {
                    form.Text = "Save Options";
                    form.FormBorderStyle = FormBorderStyle.FixedDialog;
                    form.StartPosition = FormStartPosition.CenterParent;
                    form.ClientSize = new Size(520, 220);
                    form.MinimizeBox = false;
                    form.MaximizeBox = false;
                    form.ShowInTaskbar = false;

                    var label = new Label
                    {
                        Text = "How would you like to save your changes?",
                        AutoSize = false,
                        TextAlign = ContentAlignment.MiddleCenter,
                        Dock = DockStyle.Top,
                        Height = 40
                    };
                    form.Controls.Add(label);

                    var table = new TableLayoutPanel
                    {
                        ColumnCount = 2,
                        RowCount = 3,
                        Left = 10,
                        Top = 50,
                        Width = 490,
                        Height = 120,
                        CellBorderStyle = TableLayoutPanelCellBorderStyle.None,
                        Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right
                    };
                    table.ColumnStyles.Add(new ColumnStyle(SizeType.Absolute, 140));
                    table.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100));
                    table.RowStyles.Add(new RowStyle(SizeType.Absolute, 36));
                    table.RowStyles.Add(new RowStyle(SizeType.Absolute, 36));
                    table.RowStyles.Add(new RowStyle(SizeType.Absolute, 36));

                    var btnFile = new Button
                    {
                        Text = "Save to file",
                        DialogResult = DialogResult.Yes,
                        Width = 130,
                        Height = 30,
                        Anchor = AnchorStyles.Left
                    };
                    var descFile = new Label
                    {
                        Text = "Export a .cls file to a location of your choice.",
                        AutoSize = false,
                        Width = 320,
                        Height = 32,
                        TextAlign = ContentAlignment.MiddleLeft,
                        Anchor = AnchorStyles.Left
                    };

                    var btnPak = new Button
                    {
                        Text = "Save to .pak file",
                        DialogResult = DialogResult.No,
                        Width = 130,
                        Height = 30,
                        Anchor = AnchorStyles.Left
                    };
                    var descPak = new Label
                    {
                        Text = "Put your modified vehicle straight into the game.\n(Select default_other.pak)",
                        AutoSize = false,
                        Width = 320,
                        Height = 32,
                        TextAlign = ContentAlignment.MiddleLeft,
                        Anchor = AnchorStyles.Left
                    };

                    var btnFolder = new Button
                    {
                        Text = "Save to folder structure",
                        DialogResult = DialogResult.Retry,
                        Width = 130,
                        Height = 30,
                        Anchor = AnchorStyles.Left
                    };
                    var descFolder = new Label
                    {
                        Text = "Export to a drag-and drop mod folder structure",
                        AutoSize = false,
                        Width = 320,
                        Height = 32,
                        TextAlign = ContentAlignment.MiddleLeft,
                        Anchor = AnchorStyles.Left
                    };

                    table.Controls.Add(btnFile, 0, 0);
                    table.Controls.Add(descFile, 1, 0);
                    table.Controls.Add(btnPak, 0, 1);
                    table.Controls.Add(descPak, 1, 1);
                    table.Controls.Add(btnFolder, 0, 2);
                    table.Controls.Add(descFolder, 1, 2);

                    form.Controls.Add(table);

                    form.AcceptButton = btnFile;
                    form.CancelButton = btnFolder;

                    var result = form.ShowDialog();

                    if (result == DialogResult.Yes)
                        return SaveOption.File;
                    if (result == DialogResult.No)
                        return SaveOption.Pak;
                    if (result == DialogResult.Retry)
                        return SaveOption.Folder;
                    return SaveOption.Cancel;
                }
            }
        }

        public static bool AreParsersEqual(ClsParser a, ClsParser b)
        {
            return a.ToClsString().Replace("\r\n", "\n") == b.ToClsString().Replace("\r\n", "\n");
        }
    }
}
