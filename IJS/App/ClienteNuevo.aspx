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

    <ext:Store runat="server" ID="stEstado">
        <Proxy>
            <ext:AjaxProxy runat="server" Url="http://ijsaalla.com/WSIJS/wsijsaalla/wsCB.asmx/CargaEstado">
                <ActionMethods Read="POST" />
                    <Reader>
                    <ext:XmlReader Record="Estados" />
                </Reader>
            </ext:AjaxProxy>
        </Proxy>
        <Parameters>
            <ext:StoreParameter Name="Estado" Value="#{cbMunicipio}.getValue()" Mode="Raw" />              
        </Parameters>
        <Model>
            <ext:Model ID="Model13" runat="server">
                <Fields>
                    <ext:ModelField Name="id" Type="String" Mapping="Id" />
                    <ext:ModelField Name="name" Type="String" Mapping="Name" />                        
                </Fields>
            </ext:Model>
        </Model>             
        <Listeners>
            <Load Handler="#{cbEstado}.setValue(#{cbEstado}.store.getAt(0).get('id'));" />
        </Listeners>          
    </ext:Store>
        
    <ext:Store runat="server" ID="stMunicipio">
        <Proxy>
            <ext:AjaxProxy runat="server" Url="http://ijsaalla.com/WSIJS/wsijsaalla/wsCB.asmx/CargaMunicipio">
                <ActionMethods Read="POST" />
                    <Reader>
                    <ext:XmlReader Record="Municipios" />
                </Reader>
            </ext:AjaxProxy>
        </Proxy>
        <Parameters>
            <ext:StoreParameter Name="Municipio" Value="#{cbColonia}.getValue()" Mode="Raw" />              
        </Parameters>
        <Model>
            <ext:Model ID="Model14" runat="server">
                <Fields>
                    <ext:ModelField Name="id" Type="String" Mapping="Id" />
                    <ext:ModelField Name="name" Type="String" Mapping="Name" />                        
                </Fields>
            </ext:Model>
        </Model>        
        <Listeners>
            <Load Handler="#{cbMunicipio}.setValue(#{cbMunicipio}.store.getAt(0).get('id'));#{cbEstado}.clearValue();#{stEstado}.load();" />
        </Listeners>            
    </ext:Store>

    <ext:Store runat="server" ID="stColonia">
        <Proxy>
            <ext:AjaxProxy runat="server" Url="http://ijsaalla.com/WSIJS/wsijsaalla/wsCB.asmx/CargaColonia">
                <ActionMethods Read="POST" />
                    <Reader>
                    <ext:XmlReader Record="Colonias" />
                </Reader>
            </ext:AjaxProxy>
        </Proxy>
        <Parameters>
            <ext:StoreParameter Name="CP" Value="#{txtCP}.getValue()" Mode="Raw" />              
        </Parameters>
        <Model>
            <ext:Model ID="Model15" runat="server">
                <Fields>
                    <ext:ModelField Name="id" Type="String" Mapping="Id" />
                    <ext:ModelField Name="name" Type="String" Mapping="Name" />                        
                </Fields>
            </ext:Model>
        </Model>
        <Listeners>
            <Load Handler="#{cbColonia}.setValue(#{cbColonia}.store.getAt(0).get('id')); #{cbMunicipio}.clearValue();#{stMunicipio}.load()" />
        </Listeners>            
    </ext:Store>

    <ext:FormPanel ID="FormPanel1" 
        runat="server" 
        Title="Alta de Cliente"
        Icon="UserAdd"
        Height="330"          
        BodyPadding="3"
        Border="false"
        Frame="true" 
        Layout="ColumnLayout" 
        Collapsible="true">
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
                     <ext:Checkbox ID="chkFisica" runat="server" BoxLabel="Persona Fisíca" Margins="0 10 0 0" AutoPostBack="true">
                        <DirectEvents>
                            <Change OnEvent="CheckPersona"/>
                        </DirectEvents>
                     </ext:Checkbox>
                    
                     <ext:Checkbox ID="chkMoral" runat="server" BoxLabel="Persona Moral" AutoPostBack="true" >
                        <DirectEvents>
                            <Change OnEvent="CheckPersona"/>
                        </DirectEvents>
                     </ext:Checkbox>
                </Items>

            </ext:FieldContainer>   

            <ext:FieldContainer 
                ID="fieldClienteNombres" 
                runat="server" 
                FieldLabel="Nombre(s)" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">

                <Items>
                    <ext:TextField ID="txtPrimerNombre" runat="server" EmptyText="Nombre" Margins="0 3 0 0"/>
                    <ext:TextField ID="txtSegundoNombre" runat="server" EmptyText="Segundo Nombre" Margins="0 3 0 0"/>                    
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

        <ext:FieldContainer ID="fieldCP" 
                runat="server" 
                FieldLabel="C.P." 
                AnchorHorizontal="100%" 
                Layout="HBoxLayout">                                       
                <Items>
                    <ext:TextField 
                        ID="txtCP" 
                        runat="server" 
                        Width="150" 
                        Margins="0 5 0 0" 
                        MinLength="5"
                        EmptyText="#####"
                        Regex="^[0-9]*$" 
                        RegexText="Este campo solo acepta numeros por favor rectifica" />

                    <ext:Button runat="server" ID="btnBuscarCP" Icon="Magnifier" ToolTip="Buscar C.P....">
                        <Listeners>
                            <Click Handler="#{cbColonia}.clearValue();#{stColonia}.load();" />
                        </Listeners>
                        <DirectEvents>
                            <Click OnEvent="btnBuscaCP_DirectClick" />
                        </DirectEvents>
                    </ext:Button>
                </Items>
            </ext:FieldContainer>

        <ext:FieldContainer ID="fieldColonia" 
                runat="server" 
                FieldLabel="Colonia"
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox 
                            ID="cbColonia" 
                            StoreID="stColonia"
                            runat="server" 
                            Editable="false"
                            TypeAhead="true" 
                            QueryMode="Local"      
                            ForceSelection="true"
                            TriggerAction="All"
                            DisplayField="name"
                            ValueField="id"
                            EmptyText="Selecciona tu Colonia..."
                            ValueNotFoundText="Cargando..." 
                            Disabled="true">
                            <Listeners>
                                <Select Handler="#{cbMunicipio}.clearValue();#{stMunicipio}.load();" />
                            </Listeners>
                        </ext:ComboBox>
                </Items>
        </ext:FieldContainer>    

        <ext:FieldContainer ID="fieldMpo" 
                runat="server" 
                FieldLabel="Municipio" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox 
                            ID="cbMunicipio"
                            runat="server" 
                            StoreID="stMunicipio"
                            Editable="false"
                            TypeAhead="true" 
                            QueryMode="Local"      
                            ForceSelection="true"
                            TriggerAction="All"    
                            DisplayField="name"
                            ValueField="id"
                            EmptyText="Selecciona tu Municipio..."
                            ValueNotFoundText="Cargando..." 
                            Disabled="true">
                            <Listeners>
                                <Select Handler="#{cbEstado}.clearValue();#{stEstado}.load();" />
                            </Listeners>
                         </ext:ComboBox>
                </Items>
        </ext:FieldContainer> 

        <ext:FieldContainer ID="fieldEstado" 
                runat="server" 
                FieldLabel="Estado" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">
                <Items>
                    <ext:ComboBox 
                            ID="cbEstado"
                            runat="server"
                            StoreID="stEstado"            
                            Editable="false"
                            TypeAhead="true" 
                            QueryMode="Local"      
                            ForceSelection="true"
                            TriggerAction="All"
                            DisplayField="name"
                            ValueField="id"
                            ValueNotFoundText="Cargando..."
                            EmptyText="Selecciona tu estado..." 
                            Disabled="true">    
                            <Listeners>
                                <Select Handler="#{cbMunicipio}.clearValue();#{stMunicipio}.load();" />
                            </Listeners>
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
