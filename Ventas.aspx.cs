using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inicio
{
    public partial class Ventas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblProducto.Text = Session["Producto"].ToString();
            LblMaterialR.Text = Session["Material"].ToString();
            LblAncho.Text = Session["Ancho"].ToString();
            LblAlto.Text = Session["Alto"].ToString();
            LblCantidad.Text = Session["Cantidad"].ToString();
            LblAfinadoR.Text = Session["Afinado"].ToString();
            LblAcabado.Text = Session["Acabado"].ToString();
            LblFechaEnt.Text = Session["FechaEnt"].ToString();
            LblVendedor.Text = Session["Useradmin"].ToString();
        }
    }
}