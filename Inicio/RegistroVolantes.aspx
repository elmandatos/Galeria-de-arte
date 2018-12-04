<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroVolantes.aspx.cs" Inherits="Inicio.RegistroVolantes" %>

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
    section{
        display: flex;
        justify-content: center;
        align-items: center;
        padding :2px;
    }
    article{
         border: 1px #C0A25F solid;
         padding: 110px;
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
                        <a href="#" class="activo">RegistrarVenta</a>
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
            <h2>Registro de Venta</h2>
           <h3> Volantes</h3>
            <p> 
                <asp:Label ID="LblMaterial" runat="server" Text="Material:"></asp:Label>
            </p>
            <p> 
                <asp:RadioButton ID="RbtnCuche" runat="server" GroupName="Material" Text="Cuché" ValidationGroup="Material" Checked="True" />
&nbsp;<asp:RadioButton ID="RbtnMate" runat="server" GroupName="Material" Text="Mate" ValidationGroup="Material" />
&nbsp;&nbsp;</p>
            <p> 
                <asp:Label ID="LblTamano" runat="server" Text="Tamaño:"></asp:Label>
            </p>
            <p> 
&nbsp;<asp:TextBox ID="TxbAncho" runat="server" TextMode="Number"></asp:TextBox>
                X
                <asp:TextBox ID="TxbAlto" runat="server" TextMode="Number"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxbAlto" ErrorMessage="Ingrese el alto" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </p>
            <p> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxbAncho" ErrorMessage="Ingrese el ancho" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </p>
            <p> 
                <asp:Label ID="LblAcabado" runat="server" Text="Acabado"></asp:Label>
            </p>
            <p> 
                <asp:RadioButton ID="RbtnAmbos" runat="server" GroupName="Acabado" Text="Ambos Lados" Checked="True" />
&nbsp;<asp:RadioButton ID="RbtnUnlado" runat="server" GroupName="Acabado" Text="Un lado" />
&nbsp;</p>
            <p> 
                <asp:Label ID="LblCantidad" runat="server" Text="Cantidad"></asp:Label>
                :</p>
            <p> 
                <asp:TextBox ID="TxbCantidad" runat="server" OnTextChanged="TxbCantidad_TextChanged" TextMode="Number"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxbCantidad" ErrorMessage="Se tiene que especificar una cantidad" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RvAncho0" runat="server" ControlToValidate="TxbCantidad" ErrorMessage="Se deben de encargar más de 100 volantes" ForeColor="#CC0000" MaximumValue="1000" MinimumValue="100" Type="Integer"></asp:RangeValidator>
            </p>
            <p> 
                <asp:Label ID="Label5" runat="server" Text="Fecha de entrega:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxbFechaEnt" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxbFechaEnt" ErrorMessage="Ingrese la fecha" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </p>
            <p> 
                <asp:Button ID="Button1" runat="server" Text="Realizar Venta" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp; </p>
            <p> 
                <asp:Label ID="LblMensaje" runat="server"></asp:Label>
            </p>
            
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
