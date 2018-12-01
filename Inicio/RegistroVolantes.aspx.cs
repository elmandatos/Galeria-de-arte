using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inicio
{
    public partial class RegistroVolantes : System.Web.UI.Page
    {
String Material, Ancho, Alto, Afinado, Acabado, Cantidad, FechaEnt;

        protected void TxbFechadeEntrega_TextChanged(object sender, EventArgs e)
        {
            this.FechaEnt = Convert.ToString(TxbFechaEnt.Text);

        }

        protected void TxbCantidad_TextChanged(object sender, EventArgs e)
        {
            this.Cantidad = Convert.ToString(TxbCantidad.Text);
        }

        protected void TxbAlto_TextChanged(object sender, EventArgs e)
        {
            this.Alto = Convert.ToString(TxbAlto.Text);

        }

        protected void TxbAncho_TextChanged(object sender, EventArgs e)
        {
            this.Ancho = Convert.ToString(TxbAncho.Text);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool Cuche = RbtnCuche.Checked;
            bool Mate = RbtnMate.Checked;

            bool Unlado= RbtnUnlado.Checked;
            bool Ambos = RbtnAmbos.Checked;

            if (Cuche)
                Material = RbtnCuche.Text;
            else
                Material = RbtnMate.Text;


            if (Unlado)
                Acabado = RbtnUnlado.Text;
           else
                Acabado = RbtnAmbos.Text;

            Session["Producto"] = "Triptico";
            Session["Material"] = Material;
            Session["Ancho"] = "10";
            Session["Alto"] = Alto;
            Session["Afinado"] = "El triptico no lleva afinado";
            Session["Acabado"] = Acabado;
            Session["Cantidad"] = Cantidad;
            Session["FechaEnt"] = FechaEnt;

            this.Response.Redirect("Ventas.aspx");
        }
    }
}