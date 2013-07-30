<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteNuevo.aspx.cs" Inherits="IJS.App.ClienteNuevo" %>

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

     <ext:FormPanel ID="FormPanel1" 
            runat="server" 
            Title="Alta de Cliente"
            Icon="UserAdd"
            Height="330"          
            BodyPadding="3"
            Border="false"
            Frame="true" Layout="ColumnLayout" Collapsible="true">
    <Items>   

    <ext:Panel 
        runat="server" ColumnWidth=".5" BodyPadding="5"
        ID="panelLeft"
        Height="300"
        Frame="false" 
        Border="false" Layout="FormLayout">
        
        <Items>
            
            <ext:FieldContainer 
                ID="FieldContainer1" 
                runat="server" 
                FieldLabel="Tipo de Cliente" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">

                <Items>                 
                </Items>

            </ext:FieldContainer>   

            <ext:FieldContainer 
                ID="fieldClienteNombres" 
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
                ID="fieldClienteApellidos" 
                runat="server" 
                FieldLabel="Apellido(s)" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">

                <Items>
                    <ext:TextField ID="txtPrimerApellido" runat="server" EmptyText="Primer Apellido" Margins="0 3 0 0" />
                    <ext:TextField ID="txtSegundoApellido" runat="server" EmptyText="Segundo Apellido" Margins="0 3 0 0" />                    
                </Items>

            </ext:FieldContainer>   

            <ext:FieldContainer 
                ID="fieldRFC" 
                runat="server" 
                FieldLabel="R.F.C." 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">

                <Items>
                    <ext:TextField ID="txtRFC" runat="server" EmptyText="R.F.C...." Margins="0 3 0 0" />           
                </Items>

            </ext:FieldContainer>     
                        
            <ext:FieldContainer ID="fieldEmail" 
                runat="server" 
                FieldLabel="Email" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout" >
                <Items>
                    <ext:TextField ID="txtEmail" Width="150" runat="server" EmptyText="correo@dominio.com" />
                </Items>
            </ext:FieldContainer>

            <ext:FieldContainer 
                ID="fieldFechaNacimiento" 
                runat="server" 
                FieldLabel="Fecha de Nacimiento" 
                AnchorHorizontal="100%" 
                Layout="HBoxLayout"> 
                                                      
                <Items>
                    <ext:DateField ID="txtFechaNacimiento" runat="server" Width="150" Margins="0 3 0 0" />               
                </Items>

            </ext:FieldContainer>

            <ext:FieldContainer 
                ID="fieldTelefono" 
                runat="server" 
                FieldLabel="Telefono" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">

                <Items>
                    <ext:TextField ID="txtLada" runat="server" EmptyText="Lada..." Margins="0 3 0 0" Width="50" />
                    <ext:TextField ID="txtTel" runat="server" EmptyText="Telefono..." Margins="0 3 0 0" />                    
                </Items>

            </ext:FieldContainer>                           
            
            <ext:FieldContainer ID="fieldSexo" 
                runat="server" 
                FieldLabel="Sexo" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox ID="comboSexo" runat="server" Width="150" EmptyText="Sexo...">
                    <Items>
                        <ext:ListItem Text="Masculino" Value="1" />
                        <ext:ListItem Text="Femenino" Value="2" />     
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
        
        <ext:FieldContainer ID="fieldEstado" 
                runat="server" 
                FieldLabel="Estado" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox ID="comboEstado" runat="server" Width="150" EmptyText="Estado...">
                    <Items>
                        <ext:ListItem Text="Estado 1" Value="1" />
                        <ext:ListItem Text="Estado 2" Value="2" />     
                    </Items>
                    </ext:ComboBox>
                </Items>
            </ext:FieldContainer>     
            
            <ext:FieldContainer ID="fieldMpo" 
                runat="server" 
                FieldLabel="Municipio" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox ID="comboMpo" runat="server" Width="150" EmptyText="Municipio...">
                    <Items>
                        <ext:ListItem Text="Municipio 1" Value="1" />
                        <ext:ListItem Text="Municipio 2" Value="2" />     
                    </Items>
                    </ext:ComboBox>
                </Items>
            </ext:FieldContainer>    
            
            <ext:FieldContainer ID="fieldColonia" 
                runat="server" 
                FieldLabel="Colonia"
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox ID="comboColonia" runat="server" Width="150" EmptyText="Colonia...">
                    <Items>
                        <ext:ListItem Text="Colonia 1" Value="1" />
                        <ext:ListItem Text="Colonia 2" Value="2" />     
                    </Items>
                    </ext:ComboBox>
                </Items>
            </ext:FieldContainer>      

            <ext:FieldContainer ID="fieldCP" 
                runat="server" 
                FieldLabel="C.P." 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox ID="comboCP" runat="server" Width="150" EmptyText="C.P....">
                    <Items>
                        <ext:ListItem Text="C.P. 1" Value="1" />
                        <ext:ListItem Text="C.P. 2" Value="2" />     
                    </Items>
                    </ext:ComboBox>
                </Items>
            </ext:FieldContainer>  

            <ext:FieldContainer ID="fieldCalle" 
                runat="server" 
                FieldLabel="Calle" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout" >
                <Items>
                    <ext:TextField ID="txtCalle" runat="server" EmptyText="Calle..."/>
                </Items>
            </ext:FieldContainer>

            <ext:FieldContainer ID="fieldNo" 
                runat="server" 
                FieldLabel="Número" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout" >
                <Items>
                    <ext:TextField ID="TextField2" runat="server" EmptyText="No. Exterior..." Width="80"  Margins="0 3 0 0"/>
                    <ext:TextField ID="TextField3" runat="server" EmptyText="No. Interior..." Width="80"/>
                </Items>
            </ext:FieldContainer>

            
            
        <ext:FieldSet Border="false"></ext:FieldSet>

               
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
