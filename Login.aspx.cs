using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inicio
{
    public partial class Login : System.Web.UI.Page
    {
        String user, pass;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TxbPassword_TextChanged(object sender, EventArgs e)
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

            if(user == "fernando")
            {
                if(pass == "12345")
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
        }
    }
}