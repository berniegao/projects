using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Indesign2Excel.Models.Elements
{
    public class TextFrame : PageElement
    {
        public string BackgroundColor { get; set; }
        public string FillColor { get; set; }
        public string Font { get; set; }
        public string FontStyle { get; set; }
        public int FontSize { get; set; }

        public override void AddToPage(InDesign.Page page)
        {
            InDesign.TextFrame txt = page.TextFrames.Add();
            txt.GeometricBounds = this.Geo;
            txt.Contents = this.Content;
            if (!string.IsNullOrEmpty(this.BackgroundColor))
                txt.FillColor = Utility.GetColor(page.Parent.Parent, this.BackgroundColor);
            if (!string.IsNullOrEmpty(this.FillColor))
                txt.Texts[1].FillColor = Utility.GetColor(page.Parent.Parent, this.FillColor);
            txt.Texts[1].AppliedFont = page.Parent.Parent.Parent.Fonts[this.Font];
            txt.ParentStory.Characters[1].FontStyle = this.FontStyle;

            txt.Texts[1].PointSize = this.FontSize;
        }
    }
}