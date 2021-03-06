﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Inicio
{
    public partial class RegistrarVinil : System.Web.UI.Page
    {

        String Material, Ancho, Alto, Acabado, Cantidad, FechaEnt;

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
            bool Transparente = RbtnTransparente.Checked;
            bool Microperforado = RbtnMicroperforado.Checked;

            bool Profesional = RbtnProfesional.Checked;
            bool Economico = RbtnEconomico.Checked;
            bool fotografico = RbtnFotografico.Checked;

            if (Brillante)
                Material = RbtnBrillante.Text;
            if (Mate)
                Material = RbtnMate.Text;
            if (Transparente)
                Material = RbtnTransparente.Text;
            else
                Material = RbtnMicroperforado.Text;

            if (Profesional)
                Acabado = RbtnProfesional.Text;
            if (Economico)
                Acabado = RbtnEconomico.Text;
            else
                Acabado = RbtnFotografico.Text;



            String OrderSql;
            SqlConnection Conn = new SqlConnection();

            Conn.ConnectionString =
            "Data Source=(LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=|DataDirectory|\\ProyectoFinal.mdf;";
            try
            {
                Conn.Open();
                //Insertar datos en la tabla
                OrderSql = string.Format("INSERT INTO Venta (Material, Alto, Acabado, Cantidad, FechaEnt, Ancho ) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}')", Material, Alto, Acabado, Cantidad, FechaEnt, Ancho);
                SqlCommand cmd = new SqlCommand(OrderSql, Conn);
                cmd.ExecuteNonQuery();
                Conn.Close();
                this.Response.Redirect("Ventas.aspx");

            }
            catch (Exception ex)
            {
                LblMensaje.Text = "Errot de inserción..!!" + ex.Message;
            }

            //Session["Producto"] = "Vinil";
            //Session["Material"] = Material;
            //Session["Ancho"] = Ancho;
            //Session["Alto"] = Alto;
            //Session["Acabado"] = Acabado;
            //Session["Afinado"] = "Los viniles no se afinan";
            //Session["Cantidad"] = Cantidad;
            //Session["FechaEnt"] = FechaEnt;

        }
    }
}