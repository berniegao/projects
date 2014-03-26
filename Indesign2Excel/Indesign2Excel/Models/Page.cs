using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Indesign2Excel.Models.Elements;
using System.Collections;

namespace Indesign2Excel.Models
{
    public class Page
    {
        InDesign.Page _page;
        public Page(InDesign.Page page)
        {
            _page = page;
        }
        public bool AddElement(PageElement ele)
        {
            ele.AddToPage(_page);
            return true;
        }
    }
}