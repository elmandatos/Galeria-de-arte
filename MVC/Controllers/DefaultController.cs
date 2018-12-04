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

        // POST: Default
        [HttpPost]
        public ActionResult Index(String user, String password)
        {
            var request = new User();
            request.user = user;
            request.password = password;
            String resultado = request.Check();
            if (resultado == "Result")
                ViewBag.User = user;
            return View(resultado);
        }
    }
}