<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Inicio.Inicio" %>

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
    #banner{
        margin-top: -20px;
        background-image: url(img/fondo.jpg);
        height: 500px;
        background-size: 100% 100%;
        background-repeat: no-repeat;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    #banner h1{
        font-family: impact;
        font-size: 46px;
        font-weight: normal;
        color: white;
         background-color:rgb(0,0,0,0.3);

    }
    #banner h3{
        font-family: helvetica;
        font-size: 26px;
        font-weight: normal;
        color:white;
        background-color:rgb(0,0,0,0.3);
    }
    #banner a{
        font-family: helvetica;
        text-decoration: none;
        padding: 10px 20px;
        color: white;
        background-color: #C0A25F;
        border-radius: 10px;
    }
    #banner a:hover{
        background-color: white;
        color: #C0A25F;
        border-radius: 10px;
    }
    #banner2{
        font-family: helvetica;
        margin-top: 90px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    #banner2 hr{
        margin-top: -10px;
        color: black;
        width: 20%;
        background-color: #C0A25F;
        height: 1px;
        border:1px #C0A25F solid;
    }
    #banner2 p{
        width: 60%;
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
    <header>
            <figure>
                <br>
                <img src="img/logo.png" alt="Alternate Text" />
            </figure>
            <nav>
                <ul>
                    <li>
                        <a href="#">Inicio</a>
                    </li>
                    <li>
                        <a href="Login.aspx">Log in</a>
                    </li>
                </ul>
            </nav>
        <aside>
            <img src="img/logo1.png" alt="Alternate Text" />
        </aside>
    </header>
    <section>
        <article id="banner">
            <h1>VAMOS A IMPRESIONARTE</h1>
            <h3>CALIDAD, RÁPIDEZ, SERVICIO</h3>
            <a href="">Conocenos</a>
        </article>
        <article id="banner2">
            <h2>NOSOTROS</h2>
            <hr>

            <p>
                Ofrecemos servicios con la última tecnología en impresión digital para satisfacer las necesidades de nuestros clientes con la mejor calidad y tiempo de entrega en el mercado.
                <br><br>
                Con Instalaciones de más de 1,200 m2 y oficinas corporativas en la ciudad de Mérida, tenemos como objetivo ser una empresa confiable e innovadora a nivel nacional en este ramo de la impresión.
                <br><br>
                Siempre buscando la excelencia, desde 2016 contamos con certificación por parte de Coca Cola Company Atlanta.
                <br><br>
                Actualmente contamos con empresas de primer nivel que nos respaldan como lo son Coca cola Company México, HH Global, Heineken Group, Gobierno de Mérida, entre otros.
                <br><br>
                Con una gran variedad de servicios que ofrecer, siendo pioneros de la impresión digital sobre metal en México y contando con un gran equipo. Nuestra creatividad no tiene límite.
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
</body>
</html>
