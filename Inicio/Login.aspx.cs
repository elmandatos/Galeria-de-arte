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
    public partial class Login : System.Web.UI.Page
    {
        String pass, pass1, user, user1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TxbUser_TextChanged(object sender, EventArgs e)
        {
            this.user = Convert.ToString(TxbUser.Text);
        }

        protected void TxbPassword_TextChanged1(object sender, EventArgs e)
        {
            this.pass = Convert.ToString(TxbPassword.Text);
        }

        protected void BtnIniciar_Click(object sender, EventArgs e)
        {
            String OrderSql;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
            "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=|DataDirectory|\\ProyectoFinal.mdf;";
            try
            {
                conn.Open();
                //Insertar datos en la tabla
                OrderSql = string.Format("SELECT * FROM Empleado WHERE Id={0}", user);
                SqlCommand cmd = new SqlCommand(OrderSql, conn);
                cmd.ExecuteNonQuery();
                SqlDataReader myReader = null;
                myReader = cmd.ExecuteReader();

                while (myReader.Read())
                {
                    user1 = (myReader["Id"].ToString());
                    pass1 = (myReader["PasswdEmp"].ToString());
                }
                if (user == user1 )
                {
                    if (pass == pass1)
                    {
                        Session["Useradmin"] = user;
                        this.Response.Redirect("InicioAdmin.aspx");
                    }
                    else
                    {
                        LblError.Text = "Contraseña Incorrecta"; ;
                    }
                }
                else
                {
                    LblError.Text = "Usuario Incorrecto";
                }
                conn.Close();

            }
            catch (Exception ex)
            {
                LblError.Text = "Error al Buscar..!!" + ex.Message;
            }
            
        }
    }
}