using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Indesign2Excel.Models.Elements;
using Indesign2Excel.Models;
using System.IO;

namespace Indesign2Excel.Controllers
{
    public class Indesing2ExcelController : Controller
    {
        //
        // GET: /Indesing2Excel/

        public ActionResult Index()
        {
            InDesign.Application app = Activator.CreateInstance(Type.GetTypeFromProgID("InDesign.Application"), true) as InDesign.Application;
            InDesign.Document doc = app.Open(@"E:\weiyun\_work\myProject\aka\inDesignDemo\TestData_Indesign\皇加力.indd", false);
            //InDesign.Document doc = app.ActiveDocument;
            InDesign.Graphics gs = ((dynamic)doc).Pages[2].AllGraphics;
//            var f = System.IO.File.Open(@"E:\weiyun\_work\myProject\aka\inDesignDemo\TestData_Indesign\Links\1.tif", FileMode.Open);
            InDesign.Graphic g = ((dynamic)doc).Pages[2].AllGraphics[1];
            return View();
            //((dynamic)doc).ActiveLayer.AllPageItems[2].Contents
            //((dynamic)doc).Pages[2].TextFrames[20].Contents
            //((dynamic)doc).Pages[2].TextFrames[1].Tables[1].Cells[1].Contents
            //((dynamic)doc).Pages[2].TextFrames
            //((dynamic)doc).Pages[2].Rectangles
            //((dynamic)doc).Pages[2].GraphicLines
            //((dynamic)doc).Pages[2].AllGraphics[1].ItemLink.FilePath
            //
        }
        public ActionResult AddDoc()
        {
            InDesign.Application app = Activator.CreateInstance(Type.GetTypeFromProgID("InDesign.Application"), true) as InDesign.Application;
            InDesign.Document doc = app.Documents.Add(false);
            InDesign.Page inPage = doc.Pages.FirstItem();
            Indesign2Excel.Models.Page page = new Models.Page(inPage);

            TextFrame txt = new TextFrame()
            {
                Content = "测试测试啊",
                X = 11.856,
                Y = 23.404,
                W = 20.644,
                H = 50.351,
                BackgroundColor = "C=0 M=100 Y=100 K=0",
                FillColor = "Black",
                Font = "微软雅黑",
                FontSize = 20,
                FontStyle = "Bold"

            };
            page.AddElement(txt);

            

            doc.Save(@"e:\myTestDocument.indd");

            return View();
        }

    }
}
