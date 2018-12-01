<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroEmpleados.aspx.cs" Inherits="Inicio.RegistroEmpleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
 <script type="text/javascript">
    function CheckMyCheckBox(source, args)
    {
        var elem = document.getElementById('<%= CbxTerminos.ClientID %>');

        if (elem.checked)
        {
            args.IsValid = true;
        }
        else
        {        
            args.IsValid = false;
        }
     }
   </script>
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
                        <a href="#" class="activo">Registrar Empleado</a>
                    </li>
                    <li>
                        <a href="MenuVenta.aspx">RegistrarVenta</a>
                    </li>
                     <!-- <li>
                        <a href="Ventas.aspx">Ventas</a>
                    </li> -->
                  <!--  <li>
                        <a href="Empleados.aspx">Empleados</a>
                    </li> -->
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
            <h2>Registro de Empleado</h2>
            <p>
                <asp:Label ID="LblNombre" runat="server" Text="Nombre del Empleado: "></asp:Label>
&nbsp;&nbsp;
                <asp:TextBox ID="TxbNombre" runat="server" Width="185px" OnTextChanged="TxbNombre_TextChanged"></asp:TextBox>
            </p>
            <p>
                <asp:RequiredFieldValidator ID="RfvNombre" runat="server" ControlToValidate="TxbNombre" ErrorMessage="Se debe de ingresar el nombre" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LblFecha" runat="server" Text="Fecha de Nacimiento: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxbFecha" runat="server" TextMode="Date" Width="190px" OnTextChanged="TxbFecha_TextChanged"></asp:TextBox>
            </p>
            <p>
                <asp:RequiredFieldValidator ID="RfvFecha" runat="server" ControlToValidate="TxbFecha" ErrorMessage="Se debe de ingresar la fecha de nacimiento" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Curp:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxbCurp" runat="server" Width="194px" OnTextChanged="TxbRFC_TextChanged"></asp:TextBox>
            </p>
            <p>
                <asp:RequiredFieldValidator ID="RfvRfc" runat="server" ControlToValidate="TxbCurp" ErrorMessage="Se debe de ingresar la curp" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LblCorreo" runat="server" Text="Correo Electronico: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxbCorreo" runat="server" Width="194px" OnTextChanged="TxbCorreo_TextChanged"></asp:TextBox>
            </p>
            <p>
                <asp:RequiredFieldValidator ID="RfvCorreo" runat="server" ControlToValidate="TxbCorreo" ErrorMessage="Se debe de ingresar el correo electronico" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </p>
            <p>Sexo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RbtnHombre" runat="server" value="Hombre" GroupName="sexo" Text="Hombre" ValidationGroup="sexo" Checked="True" OnCheckedChanged="RbtnHombre_CheckedChanged" />
&nbsp;<asp:RadioButton ID="RbtnMujer" runat="server" GroupName="sexo" value="Mujer" Text="Mujer" ValidationGroup="sexo" OnCheckedChanged="RbtnMujer_CheckedChanged" />
            </p>
            <p>Usuario del empleado:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxbUser" runat="server" Width="191px" OnTextChanged="UsuarioEmp_TextChanged"></asp:TextBox>
            </p>
            <p>
                <asp:RequiredFieldValidator ID="RfvUser" runat="server" ControlToValidate="TxbUser" ErrorMessage="Se debe de ingresar el usuario del empleado" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LblCont" runat="server" Text="Contraseña"></asp:Label>
&nbsp;Empleado:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxbPass1" runat="server" Width="198px" OnTextChanged="TxbPass1_TextChanged" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <p>
                <asp:RequiredFieldValidator ID="Rfvpass1" runat="server" ControlToValidate="TxbPass1" ErrorMessage="Se debe de ingresar una contraseña" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Repita la contraseña: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxbPass2" runat="server" Width="197px" OnTextChanged="TxbPass2_TextChanged" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                <asp:RequiredFieldValidator ID="RfvPass2" runat="server" ControlToValidate="TxbPass2" ErrorMessage="Se debe de ingresar una verificación de la contraseña" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </p>
            <p>&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CbxTerminos" runat="server" Text="Se le ha explicado al empleado las normas de uso del sistema" />
            </p>
            <p>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Se le deben de explicar las normas de uso al empleado para poder registrarlo" ForeColor="#CC0000" ClientValidationFunction="CheckMyCheckBox" OnServerValidate="CustomValidator1_ServerValidate1"></asp:CustomValidator>
            </p>
            <p style="margin-left: 120px">
                <asp:Button ID="BtnRegistro" runat="server" Height="33px" Text="Registrar" Width="139px" OnClick="BtnRegistro_Click" />
            </p>
            <asp:ValidationSummary ID="VsErrores" runat="server" ForeColor="#CC0000" HeaderText="Error" />
            <br />
            <br />
            <asp:RegularExpressionValidator ID="RevCorreo" runat="server" ControlToValidate="TxbCorreo" ErrorMessage="El correo ingresado esta mal escrito o es invalido " ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:CompareValidator ID="CvPass" runat="server" ControlToCompare="TxbPass1" ControlToValidate="TxbPass2" ErrorMessage="La contraseña no es igual en los dos campos" ForeColor="White"></asp:CompareValidator>
            <br />
            <asp:RegularExpressionValidator ID="RevCurp" runat="server" ControlToValidate="TxbCurp" ErrorMessage="La curp ingresada esta mal escrita o es invalida" ForeColor="White" ValidationExpression="^.*(?=.{18})(?=.*[0-9])(?=.*[A-ZÑ]).*$"></asp:RegularExpressionValidator>
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
