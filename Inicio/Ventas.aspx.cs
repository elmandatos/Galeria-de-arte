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
        }
    
        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            this.IdVenta = Convert.ToInt16(TxbIdVenta.Text);

            String OrderSql;
            SqlConnection Conn = new SqlConnection();

            Conn.ConnectionString =
            "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=|DataDirectory|\\ProyectoFinal.mdf;";
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
            this.IdVenta = Convert.ToInt16(TxbIdVenta.Text);

            this.Alto = Convert.ToString(TxbAlto.Text);
            this.Afinado = Convert.ToString(TxbAfinado.Text);
            this.Acabado = Convert.ToString(TxbAcabado.Text);
            this.Cantidad = Convert.ToString(TxbCantidad.Text);
            this.Fecha = Convert.ToString(TxbFecha.Text);
            this.Ancho = Convert.ToString(TxbAncho.Text);
            this.Material = Convert.ToString(TxbMaterial.Text);
            String OrderSql;
            SqlConnection Conn = new SqlConnection();

            Conn.ConnectionString =
            "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=|DataDirectory|\\ProyectoFinal.mdf;";
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
            this.IdVenta = Convert.ToInt16(TxbIdVenta.Text);

            String OrderSql;
            SqlConnection Conn = new SqlConnection();

            Conn.ConnectionString =
            "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=|DataDirectory|\\ProyectoFinal.mdf;";
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
                    TxbFecha.Text = (myReader["Fecha"].ToString());
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