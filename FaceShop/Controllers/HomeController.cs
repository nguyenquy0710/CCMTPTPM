using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FaceShop.Models;

namespace FaceShop.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "FaceShop";
            ViewBag.lstCategory = Categories.GetList;
            ViewBag.lstProduct = Products.GetList;
            return View();
        }
    }
}
