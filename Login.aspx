<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Inicio.Login" %>

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
    header ul li a{
	   color: white;
        background-color: #C0A25F;
        border-radius: 10px;
	    text-decoration: none;
	    padding:10px 20px;
	    display: block;
        font-family: helvetica;
        font-size: 20px;
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
        border-radius: 10px;
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
    #BtnIniciar{
        border: 1px #C0A25F solid;
        background-color:white;
        color:black;
    }
    #LblError{
        font-family:helvertica;
        color:red;
        font-size:20px;
    }
    #HTxbPassword {
        height: 22px;
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

            </nav>
        <aside>
            <img src="img/logo1.png" alt="Alternate Text" />
        </aside>
    </header>
    <section>
        <article>
            <h2>Iniciar Sesión</h2>
            <img src="img/u.png" alt="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxbUser" runat="server" placeholder="Usuario" ValidationGroup="A" OnTextChanged="TxbUser_TextChanged"></asp:TextBox>
            <strong>*</strong>
            <asp:RequiredFieldValidator ID="RfvUser" runat="server" ControlToValidate="TxbUser" ErrorMessage="Tiene que ingresar su usuario" ValidationGroup="A"></asp:RequiredFieldValidator>
            <br><br>
            <img src="img/p.png" alt="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxbPassword" runat="server" placeholder="Contraseña" OnTextChanged="TxbPassword_TextChanged1" TextMode="Password"></asp:TextBox>
            <strong>*</strong>
            <asp:RequiredFieldValidator ID="RfvPass" runat="server" ControlToValidate="TxbPassword" ErrorMessage="Tiene que ingresar su contraseña" ValidationGroup="A"></asp:RequiredFieldValidator>
            <br> 
            <h5>*Campos obligatorios</h5>
            <h5>
                <asp:Button ID="BtnIniciar" runat="server" Text="Iniciar Sesión" OnClick="BtnIniciar_Click" />
            </h5>
            <p>
                <asp:Label ID="LblError" runat="server"></asp:Label>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </article>
    </section>
    <footer>
        <h4>@2018 Formaprint MX</h4>
        <h4>Visita Nuestras Redes: </h4>
        <figure>
            <img src="img/fb.png" alt=""> 
            <img src="img/tt.png" alt="">
        </figure>
    </footer>
    </form>
</body>  
</html>
