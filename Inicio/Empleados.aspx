<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="Inicio.Empleados" %>

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
        height: 23px;
    }
    .auto-style2 {
        height: 26px;
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
                        <a class="activo" href="#">Empleados</a>
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
            <h2>Buscar Empleado</h2>
            <p>
                <asp:Button ID="Buscar" runat="server" OnClick="Buscar_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TbxIdEmp" runat="server" ></asp:TextBox>
&nbsp;&nbsp;
                <asp:Label ID="LblMensaje" runat="server"></asp:Label>
            </p>
    <table style="width:100%">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="LblNombre" runat="server" Text="Nombre: "></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TxbNombre" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
             <asp:Label ID="LblFecha" runat="server" Text="Fecha de nacimiento:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxbFecha" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><asp:Label ID="LblCorreo" runat="server" Text="Correo: "></asp:Label></td>
        <td> 
            <asp:TextBox ID="TxbCorreo" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2"><asp:Label ID="LblCurp" runat="server" Text="Curp:"></asp:Label></td>
        <td class="auto-style2">
            <asp:TextBox ID="TxbCurp" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LblSexo" runat="server" Text="Sexo:"></asp:Label>
        </td>
        <td> 
            <asp:TextBox ID="TxSexo" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="LblUser" runat="server" Text="Usuario:"></asp:Label>
        </td>
        <td class="auto-style1">
             <asp:TextBox ID="TxbUser" runat="server" ></asp:TextBox>
        </td>
    </tr>
</table>
            <br />
            <asp:Button ID="BtnActualizar" runat="server" OnClick="BtnActualizar_Click" Text="Actualizar" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnEliminar" runat="server" OnClick="BtnEliminar_Click" style="height: 26px" Text="Eliminar" />
        </article>
    </section>
    <footer>
        <h4>@2018 Formaprint MX</h4>
        <h4>Visita Nuestras Redes: </h4>
        <figure>
            <a href="#"><img src="img/fb.png" alt=""> </a>
            <a href="#"><img src="img/tt.png" alt=""></a>
        </figure>
    </footer>
    </form>
</body>
</html>