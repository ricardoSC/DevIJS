<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JuicioNuevo.aspx.cs" Inherits="IJS.App.JuicioNuevo" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">   
        
        .x-panel-header-text-default-framed {
        color: #333;
        font-size: 14px;
        font-weight: bold;
        font-family: tahoma,arial,verdana,sans-serif;
        line-height: 17px;
        }
        
        .x-form-item-label {
        display: block;
        padding: 3px 0 0;
        font-size: 12px;
        font-weight: bold;
        }
        
        .x-fieldset-header .x-fieldset-header-text {
        float: left;
        padding: 1px 0;
        font-size: 13px;
        font-weight: bold;
        }
       
    </style>
</head>
<body>
<ext:ResourceManager ID="ResourceManager1" runat="server" Theme="Gray" />

     <ext:FormPanel 
            runat="server" 
            Title="Alta de Juicio"
            Icon="BellAdd"             
            Height="330"
            Width="1000"           
            BodyPadding="3"
            Border="false"
            Frame="true" Layout="ColumnLayout">
    <Items>   

    <ext:Panel 
        runat="server" ColumnWidth=".5" BodyPadding="5"
        ID="panelLeft"
        Height="300"
        Frame="false" 
        Border="false" Layout="FormLayout">
        
        <Items>
           <ext:FieldContainer ID="fieldCliente" 
                runat="server" 
                FieldLabel="Cliente / Actor" 
                AnchorHorizontal="100%" 
                Layout="HBoxLayout">                                       
                <Items>
                    <ext:TextField ID="txtCliente" runat="server" Width="150" Margins="0 5 0 0" />
                    <ext:Button runat="server" ID="btnBuscar" Margins="0 3 0 0" Icon="Magnifier" ToolTip="Buscar Cliente..."></ext:Button>
                    <ext:Button runat="server" ID="btnNuevoCliente" Margins="0 3 0 0" Icon="UserAdd" ToolTip="Nuevo Cliente..."></ext:Button>
                </Items>
            </ext:FieldContainer>
            
            <ext:FieldContainer ID="fieldExpediente" 
                runat="server" 
                FieldLabel="No. Expediente" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout" >
                <Items>
                    <ext:TextField ID="txtExpediente" Width="150" runat="server" />
                </Items>
            </ext:FieldContainer>
            
            <ext:FieldContainer ID="fieldJuzgado" 
                runat="server" 
                FieldLabel="Juzgado" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox ID="comboJuzgado" runat="server" Width="150" EmptyText="Seleccione un Juzgado...">
                    <Items>
                        <ext:ListItem Text="Juzgado No. 1" Value="1" />
                        <ext:ListItem Text="Juzgado No. 2" Value="2" />
                        <ext:ListItem Text="Juzgado No. 3" Value="3" />
                        <ext:ListItem Text="Juzgado No. 4" Value="4" />  
                        <ext:ListItem Text="Juzgado No. 5" Value="5" />              
                    </Items>
                    </ext:ComboBox>
                </Items>
            </ext:FieldContainer>                   
            
            <ext:FieldContainer ID="fieldJuicio" 
                runat="server" 
                FieldLabel="Juicio" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox ID="comboJuicio" runat="server" Width="150" EmptyText="Tipo de Juicio...">
                    <Items>
                        <ext:ListItem Text="Juicio No. 1" Value="1" />
                        <ext:ListItem Text="Juicio No. 2" Value="2" />
                        <ext:ListItem Text="Juicio No. 3" Value="3" />
                        <ext:ListItem Text="Juicio No. 4" Value="4" />  
                        <ext:ListItem Text="Juicio No. 5" Value="5" />              
                    </Items>
                    </ext:ComboBox>
                </Items>
            </ext:FieldContainer>                         
                  
        </Items>
        
    </ext:Panel>

    <ext:Panel 
        runat="server" 
        ColumnWidth=".5" 
        BodyPadding="5"
        ID="panelRight"
        Height="300"
        Frame="false" 
        Border="false" 
        Layout="FormLayout">
                
        <Items>
        <ext:FieldContainer 
                ID="fieldFecha" 
                runat="server" 
                FieldLabel="Fecha de Alta" 
                AnchorHorizontal="100%" 
                Layout="HBoxLayout"> 
                                                      
                <Items>
                    <ext:DateField ID="dateFechaAlta" runat="server" Width="150" Margins="0 3 0 0" />               
                </Items>

            </ext:FieldContainer>
            
             <ext:FieldSet ID="fsDemandado" 
                runat="server"
                Title="Demandado"
                Collapsible="false"
                Width="380" Padding="5">

                <Items>                
                    <ext:FieldContainer 
                        ID="fieldDemandadoNombres" 
                        runat="server" 
                        FieldLabel="Nombre(s)" 
                        AnchorHorizontal="100%"
                        Layout="HBoxLayout">

                        <Items>
                            <ext:TextField ID="txtPrimerNombre" runat="server" EmptyText="Primer Nombre" Margins="0 3 0 0" />
                            <ext:TextField ID="txtSegundoNombre" runat="server" EmptyText="Segundo Nombre" Margins="0 3 0 0" />                    
                        </Items>

                    </ext:FieldContainer>   

                    <ext:FieldContainer 
                        ID="fieldDemandadoApellido" 
                        runat="server" 
                        FieldLabel="Apellido(s)" 
                        AnchorHorizontal="100%"
                        Layout="HBoxLayout">

                        <Items>
                            <ext:TextField ID="txtPrimerApellido" runat="server" EmptyText="Primer Apellido" Margins="0 3 0 0" />
                            <ext:TextField ID="txtSegundoApellido" runat="server" EmptyText="Segundo Apellido" Margins="0 3 0 0" />                    
                        </Items>

                    </ext:FieldContainer>   

                </Items>
                </ext:FieldSet>        
        </Items>       
    </ext:Panel>
    
    </Items>

    <Buttons>
        <ext:Button runat="server" ID="btnGuardar" Text="Guardar" Icon="DiskUpload" />
        <ext:Button runat="server" ID="btnCancelar" Text="Cancelar" Icon="DiskError" />
    
    </Buttons>
     </ext:FormPanel>
</body>
</html>
