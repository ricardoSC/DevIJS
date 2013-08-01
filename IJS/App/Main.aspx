<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="IJS.App.Main" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
<html>
<head id="Head1" runat="server">
    <title>Innova Jurídico Salla S.C. | Administración</title>

    <style>
        body {
            font-size : 12px;
            background-color : #284051;
            font-family : "Trebuchet MS",sans-serif;
        }
    
        #settingsWrapper {
            border-bottom    : 1px solid #111;
            background-color : #323232;
            padding-left     : 4px;
        }
    
        #settings {
            padding : 2px;
            border-bottom : 1px solid #3B3B3B;
        }
    
        #settings ul li {
            display      : inline;
            color        : #fff;
            margin-right : 8px;
            line-height  : 24px;
            padding      : 2px;
            padding-left : 19px;
        }
    
        #settings ul li a, #settings ul li a:link {
            color : #fff;
            text-decoration : none;
        }
    
        #settings ul li a:hover {
            text-decoration : underline;
        }
    
        #pageTitle {
            font-family : "Trebuchet MS",sans-serif;
            font-size   : 17px;
            text-align  : center;
            color       : #323232;
            margin-top  : 5px;
        }
    
        #itemBack {
            background : url(<%= this.ResourceManager1.GetIconUrl(Icon.House) %>) no-repeat 0 2px;
        }
    
        #itemHelp {
            background : url(<%= this.ResourceManager1.GetIconUrl(Icon.Help) %>) no-repeat 0 2px;
        }
    
        #itemConfig {
            background : url(<%= this.ResourceManager1.GetIconUrl(Icon.Cog) %>) no-repeat 0 2px;
        }
    
        #itemClose {
            background : url(<%= this.ResourceManager1.GetIconUrl(Icon.Decline) %>) no-repeat 0 2px;
        }
        
        .x-accordion-hd .x-panel-header-text {
        color: black;
        font-weight: bold;
        font-size: 12px;
        }
                        
        .x-menu-item-text {
        font-size: 12px;
        color: #222;
        }
        
        .x-panel-header-text-default {
        color: #333;
        font-size: 14px;
        font-weight: bold;
        font-family: tahoma,arial,verdana,sans-serif;
        line-height: 17px;
        }
    
         
    </style>

    
    <ext:XScript ID="XScript1" runat="server">
        <script>
            var addTab = function (tabPanel, id, url, menuItem, titulo) {
                var tab = tabPanel.getComponent(id);

                if (!tab) {
                    tab = tabPanel.add({ 
                        id       : id, 
                        title    : titulo, 
                        closable : true,
                        menuItem : menuItem,
                        loader   : {
                            url      : url,
                            renderer : "frame",
                            loadMask : {
                                showMask : true,
                                msg      : "Cargando " + titulo + "..."
                            }
                        }
                    });

                    tab.on("activate", function (tab) {
                        #{mpJuicios}.setSelection(tab.menuItem);
                    });

                    tab.on("activate", function (tab) {
                        #{mpContratos}.setSelection(tab.menuItem);
                    });

                    tab.on("activate", function (tab) {
                        #{mpBienes}.setSelection(tab.menuItem);
                    });

                    tab.on("activate", function (tab) {
                        #{mpReportes}.setSelection(tab.menuItem);
                    });

                    tab.on("activate", function (tab) {
                        #{mpClientes}.setSelection(tab.menuItem);
                    });

                    tab.on("activate", function (tab) {
                        #{mpAdmin}.setSelection(tab.menuItem);
                    });
                }
            
                tabPanel.setActiveTab(tab);
            }
        </script>
    </ext:XScript>
</head>

<body>
<form id="Form1" runat="server">    

    <ext:ResourceManager ID="ResourceManager1" runat="server" Theme="Gray" />
        
    <ext:Viewport ID="Viewport1" runat="server" StyleSpec="background-color: #fff;" Layout="BorderLayout">
        <Items>
            <ext:Panel 
                ID="pnlMnenu" 
                runat="server"
                Region="North"
                Height="110" 
                Border="false" 
                Header="false" 
                BodyStyle="background-color: transparent;">
                <Content>
                    <div id="settingsWrapper">
                        <div id="settings">
                            <ul>
                                <li id="itemBack"><a href="../Default.aspx">Regresar</a></li>
                                <li id="itemHelp"><a href="#">Ayuda</a></li>
                                <li id="itemConfig"><a href="#">Configuración</a></li>
                                <li id="itemClose"><a href="#">Salir</a></li>
                            </ul>
                        </div>
                    </div>

                    <div id="pageTitle">                        
                        <img src="/styles/images/headerAdmin.png"/>                        
                    </div>
                </Content>
            </ext:Panel>

            <ext:Panel 
                runat="server"
                Region="West" 
                Title="Menú Principal" 
                Width="200" 
                ID="pnlSettings"
                Collapsible="true"
                MinWidth="175" 
                MaxWidth="400" 
                Layout="AccordionLayout"
                Split="true" 
                Collapsed="false">                

                <Items>
                <ext:MenuPanel 
                    ID="mpJuicios" Collapsed="true" 
                    Title="Juicios" 
                    Icon="Bell"
                    runat="server" 
                    Width="200" 
                    Region="West"
                    >
                    <Menu ID="mJuicios" runat="server">
                        <Items>
                            <ext:MenuItem ID="miAJ" runat="server" Text="Alta de Juicios" Icon="BellAdd">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idAJ', 'JuicioNuevo.aspx', this, 'Juicios - Nuevo Juicio');" />
                                </Listeners>
                            </ext:MenuItem>                            
                            
                           <%-- <ext:MenuItem ID="miOrder" runat="server" Text="Pedido" Icon="TableAdd">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idOrder', 'http://www.w3schools.com/', this, 'Pedido');" />
                                </Listeners>
                            </ext:MenuItem>                            
                            
                            <ext:MenuItem ID="miFactura" runat="server" Text="Facturas" Icon="PageAttach">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idInvoice', 'http://www.w3schools.com/', this, 'Facturas');" />
                                </Listeners>
                            </ext:MenuItem>

                            <ext:MenuItem ID="miNota" runat="server" Text="Nota de Crédito" Icon="PageWhitePut">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idNota', 'http://www.w3schools.com/', this, 'Nota de Crédito');" />
                                </Listeners>
                            </ext:MenuItem>--%>
                        </Items>
                    </Menu>
                </ext:MenuPanel>

                <ext:MenuPanel 
                    ID="mpContratos" Collapsed="true"  
                    Title="Contratos" 
                    Icon="Briefcase"
                    runat="server" 
                    Width="200" 
                    Region="West" Collapsible="true"
                    >
                    <Menu ID="mContratos" runat="server">
                        <Items>
                            <ext:MenuItem ID="miNC" runat="server" Text="Nuevo Contrato" Icon="PageAdd">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idNC', 'ContratoNuevo.aspx', this, 'Contratos - Nuevo Contrato');" />
                                </Listeners>
                            </ext:MenuItem>                            
                            
                            <%--<ext:MenuItem ID="miOC" runat="server" Text="Pedidos de Clientes" Icon="TableAdd">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idOC', 'http://www.w3schools.com/', this, 'Pedido de Clientes');" />
                                </Listeners>
                            </ext:MenuItem>                            
                            
                            <ext:MenuItem ID="miIC" runat="server" Text="Facturas de Clientes" Icon="PageAttach">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idIC', 'http://www.w3schools.com/', this, 'Facturas de Clientes');" />
                                </Listeners>
                            </ext:MenuItem>

                            <ext:MenuItem ID="miNC" runat="server" Text="Nota de Crédito de Clientes" Icon="PageWhitePut">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idNC', 'http://www.w3schools.com/', this, 'Nota de Crédito de Clientes');" />
                                </Listeners>
                            </ext:MenuItem>--%>
                        </Items>
                    </Menu>
                </ext:MenuPanel>

                <ext:MenuPanel 
                    ID="mpBienes" Collapsed="true"  
                    Title="Bienes e Inmuebles" 
                    Icon="Building"
                    runat="server" 
                    Width="200" 
                    Region="West" Collapsible="true"
                    >
                    <Menu ID="mBienes" runat="server">
                        <Items>
                            <ext:MenuItem ID="miNB" runat="server" Text="Alta de Bienes e Inmuebles" Icon="BuildingAdd">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idNB', 'InmuebleNuevo.aspx', this, 'Bienes e Inmuebles - Alta de Bienes/Inmuebles');" />
                                </Listeners>
                            </ext:MenuItem>                            
                            
                            <%--<ext:MenuItem ID="miOP" runat="server" Text="Orden de Producción" Icon="PackageGo">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idOP', 'http://www.w3schools.com/', this, 'Orden de Producción');" />
                                </Listeners>
                            </ext:MenuItem>  --%>                           
                        </Items>
                    </Menu>
                </ext:MenuPanel>

                <ext:MenuPanel 
                    ID="mpClientes" Collapsed="true"  
                    Title="Clientes" 
                    Icon="UserGray"
                    runat="server" 
                    Width="200" 
                    Region="West" Collapsible="true"
                    >
                    <Menu ID="mClientes" runat="server">
                        <Items>
                            <ext:MenuItem ID="miCN" runat="server" Text="Nuevo Cliente" Icon="UserAdd">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idNC', 'ClienteNuevo.aspx', this, 'Clientes - Nuevo Cliente');" />
                                </Listeners>
                            </ext:MenuItem>                            
                            
                            <ext:MenuItem ID="miCC" runat="server" Text="Consulta de Clientes" Icon="UserMagnify">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idCC', 'ClienteConsulta.aspx', this, 'Clientes - Consulta de Clientes');" />
                                </Listeners>
                            </ext:MenuItem>                            
                                                
                        </Items>
                    </Menu>
                </ext:MenuPanel>

                <ext:MenuPanel 
                    ID="mpReportes" Collapsed="true"  
                    Title="Reportes" 
                    Icon="TableMultiple"
                    runat="server" 
                    Width="200" 
                    Region="West" Collapsible="true"
                    >
                    <Menu ID="mReportes" runat="server">
                        <Items>
                            <ext:MenuItem ID="miR1" runat="server" Text="Reporte #1" Icon="ChartBar">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idR1', 'http://www.w3schools.com/', this, 'Reporte #1');" />
                                </Listeners>
                            </ext:MenuItem>                            
                            
                            <%--<ext:MenuItem ID="miProovedores" runat="server" Text="Proovedores" Icon="UserSuitBlack">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idProv', 'http://www.w3schools.com/', this, 'Proovedores');" />
                                </Listeners>
                            </ext:MenuItem>                            
                            
                            <ext:MenuItem ID="miArticulos" runat="server" Text="Artículos" Icon="Bricks">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idAR', 'http://www.w3schools.com/', this, 'Artículos');" />
                                </Listeners>
                            </ext:MenuItem>       
                            
                            <ext:MenuItem ID="miAlmacenes" runat="server" Text="Almacenes" Icon="Building">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idAL', 'http://www.w3schools.com/', this, 'Almacenes');" />
                                </Listeners>
                            </ext:MenuItem>   --%>                   
                        </Items>
                    </Menu>
                </ext:MenuPanel>

                <ext:MenuPanel 
                    ID="mpAdmin" Collapsed="true"  
                    Title="Administración" 
                    Icon="CogGo"
                    runat="server" 
                    Width="200" 
                    Region="West" Collapsible="true"
                    >
                    <Menu ID="mAdmin" runat="server">
                        <Items>
                            <ext:MenuItem ID="miAU" runat="server" Text="Administración de Usuarios" Icon="UserEdit">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idAU', 'http://www.w3schools.com/', this, 'Administración de Usuarios');" />
                                </Listeners>
                            </ext:MenuItem>                            
                            
                            <%--<ext:MenuItem ID="miPRealizados" runat="server" Text="Pagos Realizados" Icon="CoinsDelete">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idPRea', 'http://www.w3schools.com/', this, 'Pagos Realizados');" />
                                </Listeners>
                            </ext:MenuItem>                            
                            
                            <ext:MenuItem ID="miFormasPago" runat="server" Text="Formas de Pago" Icon="Creditcards">
                                <Listeners>
                                    <Click Handler="addTab(#{tabMain}, 'idFP', 'http://www.w3schools.com/', this, 'Formas de Pago');" />
                                </Listeners>
                            </ext:MenuItem>   --%>                         
                        </Items>
                    </Menu>
                </ext:MenuPanel>         
                </Items>                                    
            </ext:Panel>

            <ext:TabPanel 
                ID="tabMain"
                Region="Center"
                runat="server" 
                Border="true" >                
            </ext:TabPanel> 
        </Items>
    </ext:Viewport>
</form>
</body>
</html>