<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acceso.aspx.cs" Inherits="IJS.Acceso" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <title>Innova Jurídico Salla S.C. | Acceso</title>
        <link rel="stylesheet" type="text/css" href="styles/reset.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="styles/styles.css" media="screen" />
        <link href='http://fonts.googleapis.com/css?family=BenchNine:700' rel='stylesheet' type='text/css'/>
        <link href='http://fonts.googleapis.com/css?family=Oxygen:300' rel='stylesheet' type='text/css'/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    </head>
    <body >

        <ext:ResourceManager ID="ResourceManager1" runat="server" Theme="Gray" />

        <div class="content">
            <div id="header">
                <div id="logo">
                    <a href="/" ><img src="styles/images/logo.png" alt="ijsaalla" border="0" /></a>
                </div>
                <div id="menuAccess">
                    <ul>
                        <li><a href="Default.aspx">inicio</a></li>
                        <li><a href="Servicios.aspx">servicios</a></li>
                        <li><a href="Contacto.aspx" >contacto</a></li>
                        <li><a href="Acceso.aspx" class="btnactive">acceso</a></li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
            <div id="body">
                <br/><br/><br/>

            <form class="box login">
            <fieldset class="boxBody">
	            <label>Usuario:</label>

                <ext:TextField 
                    ID="txtUser" 
                    runat="server"
                    Width="280px" 
                    Height="40px">
                </ext:TextField>

	            <label><a href="#" class="rLink" tabindex="5">¿Olvidaste tu Contraseña?</a>Contraseña:</label>

                <ext:TextField 
                    ID="txtPass" 
                    runat="server"
                    Width="280px"
                    InputType="Password"
                    Height="40px">
                </ext:TextField>


            </fieldset>

            <footer>
                <ext:Button 
                    ID="btnLogin" 
                    runat="server" StyleSpec="font-weight:bold;font-size:12px" 
                    Text="Entrar" Height="25px" Width="90px" >

                    <DirectEvents>
                        <Click OnEvent="ValidaAcceso" />
                    </DirectEvents>
                </ext:Button>
            </footer>
            </form>
                
                <br/><br/><br/>
            </div>

            <div id="footer">
                <a>2013 | AVISO DE PRIVACIDAD</a>
            </div>
        </div>
    </body>
</html>