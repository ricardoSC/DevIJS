<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InmuebleNuevo.aspx.cs" Inherits="IJS.App.InmuebleNuevo" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            Title="Alta de Inmuebles"
            Icon="BuildingAdd"
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
                FieldLabel="Dueño" 
                AnchorHorizontal="100%" 
                Layout="HBoxLayout">                                       
                <Items>
                    <ext:TextField ID="txtCliente" runat="server" Width="150" Margins="0 5 0 0" />
                    <ext:Button runat="server" ID="btnBuscar" Margins="0 3 0 0" Icon="Magnifier" ToolTip="Buscar Cliente..."></ext:Button>
                    <ext:Button runat="server" ID="btnNuevoCliente" Margins="0 3 0 0" Icon="UserAdd" ToolTip="Nuevo Cliente..."></ext:Button>
                </Items>
            </ext:FieldContainer>
            
            <ext:FieldContainer ID="fieldInmueble" 
                runat="server" 
                FieldLabel="Id. de Inmueble" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout" >
                <Items>
                    <ext:TextField ID="txtInmueble" Width="150" runat="server" />
                </Items>
            </ext:FieldContainer>
            
            <ext:FieldContainer ID="fieldTipoMovimiento" 
                runat="server" 
                FieldLabel="Movimiento" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox ID="comboMovimiento" runat="server" Width="150" EmptyText="Tipo de Movimiento...">
                    <Items>
                        <ext:ListItem Text="Movimiento No. 1" Value="1" />
                        <ext:ListItem Text="Movimiento No. 2" Value="2" />
                        <ext:ListItem Text="Movimiento No. 3" Value="3" />           
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
            
            <ext:FieldContainer 
                ID="fieldDireccion" 
                runat="server" 
                FieldLabel="Dirección" 
                AnchorHorizontal="100%" 
                Layout="HBoxLayout"> 
                                                      
                <Items>
                    <ext:TextArea runat="server" ID="txtDireccion" EmptyText="Dirección..." Margins="0 3 0 0" Width="250" />             
                </Items>
                </ext:FieldContainer>
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
