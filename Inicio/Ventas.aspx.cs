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
    public partial class Ventas : System.Web.UI.Page
    {
        String Material, Ancho, Alto, Afinado, Acabado, Cantidad, Fecha;
        Int16 IdVenta;

        protected void Page_Load(object sender, EventArgs e)
        {
            //TxbMaterial.Enabled = false;
            //TxbFecha.Enabled = false;
            //TxbAncho.Enabled = false;
            //TxbAlto.Enabled = false;
            //TxbAfinado.Enabled = false;
            //TxbAcabado.Enabled = false;
            //TxbCantidad.Enabled = false;
        }
        protected void TxbAlto_TextChanged(object sender, EventArgs e)
        {
            this.Alto = Convert.ToString(TxbAlto.Text);
        }

        protected void TxbAfinado_TextChanged(object sender, EventArgs e)
        {
            this.Afinado = Convert.ToString(TxbAfinado.Text);
        }

        protected void TxbAcabado_TextChanged(object sender, EventArgs e)
        {
            this.Acabado = Convert.ToString(TxbAcabado.Text);
        }

        protected void TxbIdVenta_TextChanged(object sender, EventArgs e)
        {
            this.IdVenta = Convert.ToInt16(TxbIdVenta.Text);
        }

        protected void TxbCantidad_TextChanged(object sender, EventArgs e)
        {
            this.Cantidad = Convert.ToString(TxbCantidad.Text);
        }

        protected void TxbFecha_TextChanged(object sender, EventArgs e)
        {
            this.Fecha = Convert.ToString(TxbFecha.Text);
        }

        protected void TxbAncho_TextChanged(object sender, EventArgs e)
        {
            this.Ancho = Convert.ToString(TxbAncho.Text);
        }

        protected void TxbMaterial_TextChanged(object sender, EventArgs e)
        {
            this.Material = Convert.ToString(TxbMaterial.Text);
        }
        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            SqlConnection Conn;
            String OrderSql;
            Conn = new SqlConnection();
            //Conectar a la base de datos no  a la table
            Conn.ConnectionString = "Data Source=(localdb)MSSQLLocalDB\\ProjectsV13;Initial Catalog=ProyectoFinal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            try
            {
                Conn.Open();
                //Insertar datos en la tabla
                OrderSql = string.Format("DELETE FROM Venta WHERE IdVenta={0}", IdVenta);
                SqlCommand cmd = new SqlCommand(OrderSql, Conn);
                cmd.ExecuteNonQuery();
                LblMensaje.Text = "Venta Eliminada...!";
                Conn.Close();

            }
            catch (Exception ex)
            {
                LblMensaje.Text = "Error al Eliminar..!!" + ex.Message;
            }
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            SqlConnection Conn;
            String OrderSql;
            Conn = new SqlConnection();
            //Conectar a la base de datos no  a la table
            Conn.ConnectionString = "Data Source=(localdb)\\ProjectsV13;Initial Catalog=ProyectoFinal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            try
            {
                Conn.Open();
                //Insertar datos en la tabla
                OrderSql = string.Format("Update Venta SET Material = '{0}', Ancho = '{1}', Alto= '{2}', Afinado= '{3}', Acabado= '{4}', Cantidad ='{5}', Fecha)= '{6}' WHERE IdVenta ={7}", Material, Ancho, Alto, Afinado, Acabado, Cantidad, Fecha, IdVenta);
                SqlCommand cmd = new SqlCommand(OrderSql, Conn);
                cmd.ExecuteNonQuery();
                LblMensaje.Text = "Venta Actualizada..!!";
                Conn.Close();
            }
            catch (Exception ex)
            {
                LblMensaje.Text = "Errot de Actualización..!!" + ex.Message;
            }
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
           // TxbMaterial.Enabled = true;
            //TxbFecha.Enabled = true;
           // TxbAncho.Enabled = true;
           // TxbAlto.Enabled = true;
           // TxbAfinado.Enabled = true;
           // TxbAcabado.Enabled = true;
           // TxbCantidad.Enabled = true;

            SqlConnection Conn;
            String OrderSql;
            Conn = new SqlConnection();
            //Conectar a la base de datos no  a la table
            Conn.ConnectionString = "Data Source=(localdb)\\ProjectsV13;Initial Catalog=ProyectoFinal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            try
            {
                Conn.Open();
                //Insertar datos en la tabla
                OrderSql = string.Format("SELECT * FROM Venta WHERE IdVenta={0}", IdVenta);
                SqlCommand cmd = new SqlCommand(OrderSql, Conn);
                cmd.ExecuteNonQuery();
                SqlDataReader myReader = null;
                myReader = cmd.ExecuteReader();

                while (myReader.Read())
                {
                    TxbMaterial.Text = (myReader["Material"].ToString());
                    TxbAlto.Text = (myReader["Alto"].ToString());
                    TxbAfinado.Text = (myReader["Afinado"].ToString());
                    TxbAcabado.Text = (myReader["Acabado"].ToString());
                    TxbCantidad.Text = (myReader["Cantidad"].ToString());
                    TxbFecha.Text = (myReader["FechaEnt"].ToString());
                    TxbAncho.Text = (myReader["Ancho"].ToString());
                }
                LblMensaje.Text = "Venta encontrada...!";
                Conn.Close();

            }
            catch (Exception ex)
            {
                LblMensaje.Text = "Errot al Buscar..!!" + ex.Message;
            }
        }
    }
}