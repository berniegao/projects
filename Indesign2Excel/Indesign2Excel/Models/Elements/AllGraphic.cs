using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Indesign2Excel.Models.Elements
{
    public class AllGraphic : PageElement
    {
        public override void AddToPage(InDesign.Page page)
        {
            //InDesign.Graphic txt = page.AllGraphics();
            //txt.ItemLink.FilePath
            //txt.GeometricBounds = this.Geo;
            //txt.Contents = this.Content;
            //if (!string.IsNullOrEmpty(this.BackgroundColor))
            //    txt.FillColor = Utility.GetColor(page.Parent.Parent, this.BackgroundColor);
            //if (!string.IsNullOrEmpty(this.FillColor))
            //    txt.Texts[1].FillColor = Utility.GetColor(page.Parent.Parent, this.FillColor);
            //txt.Texts[1].AppliedFont = page.Parent.Parent.Parent.Fonts[this.Font];
            //txt.ParentStory.Characters[1].FontStyle = this.FontStyle;

            //txt.Texts[1].PointSize = this.FontSize;
        }
    }
}