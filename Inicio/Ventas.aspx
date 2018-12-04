<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="Inicio.Ventas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<style>
    header{
        background-color:rgb(0,0,0);
        display:flex;
        flex-direction:row;
        justify-content:space-between;
    }

    header figure img{
        width:200px;
        height: 46px;
    }
    header ul li a{
        width:100%;
    }
    header ul{
        display:flex;
        flex-direction: row;
    }
    #salir{
        background-color:#B71C1C;
        color:white;
         border:1px #B71C1C solid;
    }   
        #salir:hover{
        background-color:white;
        color:#B71C1C;
         border:1px #B71C1C solid;
    }
    header ul li a{
       color: white;
        background-color: #C0A25F;
        border-radius: 4px;
        text-decoration: none;
        padding:6px 14px;
        display: block;
        font-family: helvetica;
        font-size: 14px;
        border:1px #C0A25F solid;
    }
    header ul li
    {
        list-style: none;
        padding: 25px;
    }
    header ul li:hover a{
        background-color: white;
        color: #C0A25F;
        border-radius: 4px;
    }
        .activo{
        background-color: white;
        color:#C0A25F;
        border: 1px #C0A25F solid;
    }
    .activo:hover{
        background-color:#C0A25F; 
        color:white;
        border: 1px white solid;
    }
    section{
        display: flex;
        justify-content: center;
        align-items: center;
        padding :2px;
    }
    article{
         border: 1px #C0A25F solid;
         padding: 150px;
    }
    article h2{
        color: #C0A25F; 
        font-family: helvetica;
    }
    
    footer{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items:center;
        color: white;
        background-color: black;
    }
    footer h3{

    }
    .auto-style1 {
        width: 100%;
    }
</style>
<body>
    <form id="form1" runat="server">
    <header>
            <figure>
                <br>
                <img src="img/logo.png" alt="Alternate Text" />
            </figure>
             <nav>
                <ul>
                    <li>
                        <a href="InicioAdmin.aspx" >Inicio</a>
                    </li>
                    <li>
                        <a href="RegistroEmpleados.aspx" >Registrar Empleado</a>
                    </li>
                    <li>
                        <a href="MenuVenta.aspx">RegistrarVenta</a>
                    </li>
                     <li>
                        <a href="Ventas.aspx">Ventas</a>
                    </li>
                  <li>
                        <a href="Empleados.aspx">Empleados</a>
                    </li>
                    <li>
                        <a id= "salir" href="Inicio.aspx">Salir</a>
                    </li>
                </ul>
            </nav>
        <aside>
            <img src="img/logo1.png" alt="Alternate Text" />
        </aside>
    </header>
    <section>
        <article>
            <h2>Buscar Venta : 
            </h2>
            <p>
                <asp:Button ID="BtnBuscar" runat="server" OnClick="BtnBuscar_Click" Text="Buscar" />
&nbsp;&nbsp;
                <asp:TextBox ID="TxbIdVenta" runat="server" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LblMensaje" runat="server"></asp:Label>
            </p>
            <table class="auto-style1">
  <tr>
    <td><asp:Label ID="LblMat" runat="server" Text="Material: "></asp:Label></td>
    <td>
        <asp:TextBox ID="TxbMaterial" runat="server" ></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td><asp:Label ID="LblA" runat="server" Text="Ancho: "></asp:Label></td>
    <td>
        <asp:TextBox ID="TxbAncho" runat="server" Height="16px"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td><asp:Label ID="LblAL" runat="server" Text="Alto: "></asp:Label></td>
    <td> 
        <asp:TextBox ID="TxbAlto" runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td><asp:Label ID="Label7" runat="server" Text="Afinado: "></asp:Label></td>
    <td> 
        <asp:TextBox ID="TxbAfinado" runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td><asp:Label ID="Label9" runat="server" Text="Acabado: "></asp:Label></td>
    <td> 
        <asp:TextBox ID="TxbAcabado" runat="server" ></asp:TextBox>
      </td>
  </tr>


  <tr>
    <td><asp:Label ID="LblCant" runat="server" Text="Cantidad: "></asp:Label></td>
    <td> 
        <asp:TextBox ID="TxbCantidad" runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td> <asp:Label ID="Label13" runat="server" Text="Fecha de entrega: "></asp:Label></td>
     <td> 
         <asp:TextBox ID="TxbFecha" runat="server"></asp:TextBox>
      </td>
  </tr>
</table>
            <p>
                <asp:Button ID="BtnActualizar" runat="server" OnClick="BtnActualizar_Click" Text="Actualizar" />
&nbsp;
                <asp:Button ID="BtnEliminar" runat="server" OnClick="BtnEliminar_Click" Text="Eliminar" />
            </p>
        </article>
    </section>
    <footer>
        <h4>@2018 Formaprint MX MX</h4>
        <h4>Visita Nuestras Redes: </h4>
        <figure>
            <a href="#"><img src="img/fb.png" alt=""> </a>
            <a href="#"><img src="img/tt.png" alt=""></a>
        </figure>
    </footer>
    </form>
</body>
</html>
