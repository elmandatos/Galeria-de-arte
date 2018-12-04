using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC.Models
{
    public class User
    {
        public String user { get; set; }
        public String password { get; set; }

        public String Check()
        {
            if (this.user == "daniel" && this.password == "1234")
            {
                return "Result";
            }
            return "Inicio";
        }
    }
}