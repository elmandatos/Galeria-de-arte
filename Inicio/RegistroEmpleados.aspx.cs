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
    public partial class RegistroEmpleados : System.Web.UI.Page
    {
        
        String Nombre, Fecha, Curp, sexo, user, pass, correo;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie ckNombre;
            ckNombre = this.Request.Cookies["Nombreck"];
            if (ckNombre != null)
            {
                TxbNombre.Text = ckNombre.Value;
            }
            HttpCookie ckCurp;
            ckCurp = this.Request.Cookies["Curpck"];
            if (ckCurp != null)
            {
                TxbCurp.Text = ckCurp.Value;
            }
            HttpCookie ckuser;
            ckuser = this.Request.Cookies["userck"];
            if (ckuser != null)
            {
                TxbUser.Text = ckuser.Value;
            }
            HttpCookie ckCorreo;
            ckCorreo = this.Request.Cookies["Correock"];
            if (ckCorreo != null)
            {
                TxbCorreo.Text = ckCorreo.Value;
            }
        }

        protected void TxbNombre_TextChanged(object sender, EventArgs e)
        {
            this.Nombre = Convert.ToString(TxbNombre.Text);
            HttpCookie ckNombre = new HttpCookie("Nombreck", TxbNombre.Text);
            ckNombre.Expires = DateTime.Now.AddMinutes(5);
            this.Response.Cookies.Add(ckNombre);
        }

        protected void TxbFecha_TextChanged(object sender, EventArgs e)
        {
            this.Fecha = Convert.ToString(TxbFecha.Text);
        }

        protected void TxbRFC_TextChanged(object sender, EventArgs e)
        {
            this.Curp = Convert.ToString(TxbCurp.Text);
            HttpCookie ckCurp = new HttpCookie("Curpck", TxbCurp.Text);
            ckCurp.Expires = DateTime.Now.AddMinutes(5);
            this.Response.Cookies.Add(ckCurp);
        }

        protected void RbtnHombre_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            
        }

        protected void TxbCorreo_TextChanged(object sender, EventArgs e)
        {
            this.correo= Convert.ToString(TxbCorreo.Text);
            HttpCookie ckCorreo = new HttpCookie("Correock", TxbCorreo.Text);
            ckCorreo.Expires = DateTime.Now.AddMinutes(5);
            this.Response.Cookies.Add(ckCorreo);
        }

        protected void RbtnMujer_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void UsuarioEmp_TextChanged(object sender, EventArgs e)
        {
            this.user = Convert.ToString(TxbUser.Text);
            HttpCookie ckuser = new HttpCookie("userck", TxbUser.Text);
            ckuser.Expires = DateTime.Now.AddMinutes(5);
            this.Response.Cookies.Add(ckuser);

        }

        protected void TxbPass1_TextChanged(object sender, EventArgs e)
        {
            this.pass = Convert.ToString(TxbPass1.Text);

        }

        protected void TxbPass2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnRegistro_Click(object sender, EventArgs e)
        {
            bool marcado = RbtnHombre.Checked;
            if (marcado)
                sexo = RbtnHombre.Text;
            else
                sexo = RbtnMujer.Text;



            String OrderSql;
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString =
            "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=|DataDirectory|\\ProyectoFinal.mdf;";
            try
            {
                conn.Open();
                //Insertar datos en la tabla
                OrderSql = string.Format("INSERT INTO Empleado (Curp, FechaNac, NombreEmp, Correo, Sexo, UserEmp, PasswdEmp ) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", Curp, Fecha, Nombre, correo, sexo, user, pass);
                SqlCommand cmd = new SqlCommand(OrderSql, conn);
                cmd.ExecuteNonQuery();
                LblMensaje.Text = "Empleado Agregado.!!";
                conn.Close();
                this.Response.Redirect("Empleados.aspx");

            }
            catch (Exception ex)
            {
                LblMensaje.Text = "Errot de inserción..!!" + ex.Message;
            }


            // Session["Nombre"] = Nombre;
            //Session["Fecha"] = Fecha;
            // Session["Curp"] = Curp;
            // Session["sexo"] = sexo;
            //Session["pass"] = pass;
            //Session["correo"] = correo;
            //Session["user"] = user;



        }
    }
}