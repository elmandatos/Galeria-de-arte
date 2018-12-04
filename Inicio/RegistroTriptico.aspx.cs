using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Inicio
{
    public partial class RegistroTriptico : System.Web.UI.Page
    {
        String Material, Ancho, Alto, Afinado= "No lleva", Acabado, Cantidad, FechaEnt;

        protected void TxbFechadeEntrega_TextChanged(object sender, EventArgs e)
        {
            this.FechaEnt = Convert.ToString(TxbFechadeEntrega.Text);

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

            bool Zigzag = RbtnZigzag.Checked;
            bool Letterfold = RbtnLetterfold.Checked;

            if (Cuche)
                Material = RbtnCuche.Text;
            else
                Material = RbtnMate.Text;


            if (Zigzag)
                Acabado = RbtnZigzag.Text;
           else
                Acabado = RbtnLetterfold.Text;


            SqlConnection Conn;
            String OrderSql;
            Conn = new SqlConnection();
            //Conectar a la base de datos no  a la table
            Conn.ConnectionString = "Data Source=(localdb)\\ProjectsV13;Initial Catalog=ProyectoFinal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            try
            {
                Conn.Open();
                //Insertar datos en la tabla
                OrderSql = string.Format("INSERT INTO Venta (Material, Alto, Afinado, Acabado, Cantidad, FechaEnt, Ancho ) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", Material, Alto, Afinado, Acabado, Cantidad, FechaEnt, Ancho);
                SqlCommand cmd = new SqlCommand(OrderSql, Conn);
                cmd.ExecuteNonQuery();
                Conn.Close();
                this.Response.Redirect("Ventas.aspx");

            }
            catch (Exception ex)
            {
                LblMensaje.Text = "Errot de inserción..!!" + ex.Message;
            }

            //Session["Producto"] = "Triptico";
            //Session["Material"] = Material;
            //Session["Ancho"] = "10";
            //Session["Alto"] = Alto;
            //Session["Afinado"] = "El triptico no lleva afinado";
            //Session["Acabado"] = Acabado;
            //Session["Cantidad"] = Cantidad;
            //Session["FechaEnt"] = FechaEnt;

        }
    }
}