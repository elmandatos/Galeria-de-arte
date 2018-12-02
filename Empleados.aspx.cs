using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inicio
{
    public partial class Empleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblNombreR.Text = Session["Nombre"].ToString();
            LblfechaR.Text = Session["Fecha"].ToString();
            LblCorreoR.Text = Session["correo"].ToString();
            LblCurpR.Text = Session["Curp"].ToString();
            LblSexoR.Text = Session["sexo"].ToString();
            LblUserR.Text = Session["user"].ToString();
        }

    }
}