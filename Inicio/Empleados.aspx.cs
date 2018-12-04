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
    public partial class Empleados : System.Web.UI.Page
    {
        String Nombreemp, Fechaemp, Correoemp, Curpemp, Sexoemp, Useremp;
        Int16 Idemp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            this.Idemp = Convert.ToInt16(TbxIdEmp.Text);

            String OrderSql;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
            "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=|DataDirectory|\\ProyectoFinal.mdf;";
            try
            {
                conn.Open();
                //Insertar datos en la tabla
                OrderSql = string.Format("SELECT * FROM Empleado WHERE Id={0}", Idemp);
                SqlCommand cmd = new SqlCommand(OrderSql, conn);
                cmd.ExecuteNonQuery();
                SqlDataReader myReader = null;
                myReader = cmd.ExecuteReader();

                while (myReader.Read())
                {
                    TxbNombre.Text = (myReader["NombreEmp"].ToString());
                    TxbCurp.Text = (myReader["Curp"].ToString());
                    TxbFecha.Text = (myReader["FechaNac"].ToString());
                    TxbCorreo.Text = (myReader["Correo"].ToString());
                    TxSexo.Text = (myReader["Sexo"].ToString());
                    TxbId.Text = (myReader["Id"].ToString());
                }

                LblMensaje.Text = "Empleado encontrado...!";
                conn.Close();

            }
            catch (Exception ex)
            {
                LblMensaje.Text = "Error al Buscar..!!" + ex.Message;
            }
        }
        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            this.Nombreemp = Convert.ToString(TxbNombre.Text);
            this.Fechaemp = Convert.ToString(TxbFecha.Text);
            this.Idemp = Convert.ToInt16(TbxIdEmp.Text);
            this.Correoemp = Convert.ToString(TxbCorreo.Text);
            this.Curpemp = Convert.ToString(TxbCurp.Text);
            this.Sexoemp = Convert.ToString(TxSexo.Text);

            String OrderSql;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
            "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=|DataDirectory|\\ProyectoFinal.mdf;";
            try
            {
                conn.Open();
                //Insertar datos en la tabla
                OrderSql = string.Format("UPDATE Empleado SET Curp = '{0}', FechaNac= '{1}', NombreEmp='{2}', Correo='{3}', Sexo='{4}', UserEmp='{5}' WHERE Id = {6}", Curpemp, Fechaemp, Nombreemp, Correoemp, Sexoemp, Useremp, Idemp);
                SqlCommand cmd = new SqlCommand(OrderSql, conn);
                cmd.ExecuteNonQuery();
                LblMensaje.Text = "Empleado Actualizado..!!";
                conn.Close();
            }
            catch (Exception ex)
            {
                LblMensaje.Text = "Error de Actualización..!!" + ex.Message;
            }
        }
        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            this.Idemp = Convert.ToInt16(TbxIdEmp.Text);

         
            String OrderSql;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
            "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=|DataDirectory|\\ProyectoFinal.mdf;";

            try
            {
                conn.Open();
                //Insertar datos en la tabla
                OrderSql = string.Format("DELETE FROM Empleado WHERE Id={0}", Idemp);
                SqlCommand cmd = new SqlCommand(OrderSql, conn);
                cmd.ExecuteNonQuery();
                LblMensaje.Text = "Empleado Eliminado...!";
                conn.Close();

            }
            catch (Exception ex)
            {
                LblMensaje.Text = "Error al Eliminar..!!" + ex.Message;
            }
        }
    }
}