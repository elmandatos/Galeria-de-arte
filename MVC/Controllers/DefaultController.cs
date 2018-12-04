using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC.Models
{
    public class DefaultController : Controller
    {
        // GET: Default
        public ActionResult Index()
        {
            return View("Inicio");
        }

        // GET: Default
        public ActionResult Check()
        {

            return View("Result");
        }
    }
}