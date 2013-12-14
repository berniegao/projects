using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using InDesign;

namespace Indesign2Excel.Controllers
{
    public class Indesing2ExcelController : Controller
    {
        //
        // GET: /Indesing2Excel/

        public ActionResult Index()
        {
            InDesign.Application app = Activator.CreateInstance(Type.GetTypeFromProgID("InDesign.Application"), true) as InDesign.Application;
            app.Open(@"E:\weiyun\_work\myProject\aka\inDesignDemo\TestData_Indesign\皇加力.indd");
            InDesign.Document doc = app.ActiveDocument;
            return View();
            //((dynamic)doc).ActiveLayer.AllPageItems[2].Contents
//((dynamic)doc).Pages[2].TextFrames[20].Contents
        }

    }
}
