using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Indesign2Excel.Models
{
    public class Utility
    {
        public static InDesign.Color GetColor(InDesign.Document doc, string colorName)
        {
            //in hand
            InDesign.Color myColor = doc.Colors.Cast<InDesign.Color>().ToList().Where(c=>c.Name == colorName).Select(c=>c).FirstOrDefault();
            if(myColor !=null)
                return myColor;

            // add new
            double[] value = colorName.Split(' ', '=', 'C', 'M', 'Y', 'K', 'R', 'G', 'B')
                .ToList().Where(c => !string.IsNullOrEmpty(c)).Select(c => { return Convert.ToDouble(c); })
                .ToArray();
            if(value == null || (value.Length != 3 && value.Length !=4) )
                return doc.Colors["Black"];
            InDesign.idColorSpace colorSpace;
            colorName = string.Empty;
            if(value.Length == 3)
            {
                colorName += "R=" +value[0] +" G="+value[1]+" B="+value[2];
                colorSpace = InDesign.idColorSpace.idRGB;
            }
            else
            {
                colorName += "C=" +value[0] +" M="+value[1]+" Y="+value[2] +" K="+value[3];
                colorSpace = InDesign.idColorSpace.idCMYK;
            }
            myColor = doc.Colors.Add();
            myColor.Name=colorName;
            myColor.Model = InDesign.idColorModel.idProcess;
            myColor.Space = colorSpace;
            myColor.ColorValue = value;
            return myColor;
        }
    }
}