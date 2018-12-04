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
    public partial class RegistrarVenta : System.Web.UI.Page
    {
        String Material, Ancho, Alto, Afinado, Acabado, Cantidad, FechaEnt;

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
            bool Brillante = RbtnBrillante.Checked;
            bool Mate = RbtnMate.Checked;
            bool Mesh = RbtnMesh.Checked;
            bool Backlit = RbtnBacklit.Checked;

            bool Recto = RbtnRecto.Checked;
            bool Ojillos = RbtnOjillos.Checked;
            bool Pendon = RbtnPendon.Checked;

            bool Profesional = RbtnProfesional.Checked;
            bool Economico = RbtnEconomico.Checked;
            bool fotografico = RbtnFotografico.Checked;

            if (Brillante)
                Material = RbtnBrillante.Text;
            if (Mate)
                Material = RbtnMate.Text;
            if (Mesh)
                Material = RbtnMesh.Text;
            else
                Material = RbtnBacklit.Text;

            if (Recto)
                Afinado = RbtnRecto.Text;
            if (Ojillos)
                Afinado = RbtnOjillos.Text;
            else
                Afinado = RbtnPendon.Text;

            if (Profesional)
                Acabado = RbtnProfesional.Text;
            if (Economico)
                Acabado = RbtnEconomico.Text;
            else
                Acabado = RbtnFotografico.Text;

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


            //Session["Producto"] = "Lona";
            //Session["Material"] = Material;
            //Session["Ancho"] = Ancho;
            //Session["Alto"] = Alto;
            //Session["Afinado"] = Afinado;
            //Session["Acabado"] = Acabado;
            //Session["Cantidad"] = Cantidad;
            //Session["FechaEnt"] = FechaEnt;

        }
    }
}