using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Indesign2Excel.Models.Elements
{
    public abstract class PageElement
    {
        public double X { get; set; }
        public double Y { get; set; }
        public double H { get; set; }
        public double W { get; set; }
        public string Content { get; set; }
        public double[] Geo
        {
            get
            {
                double[] geo = new double[4];
                geo[0] = Y;
                geo[1] = X;
                geo[2] = Y + H;
                geo[3] = X + W;
                return geo;
            }
        }
        public abstract void AddToPage(InDesign.Page page);
    }
}