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
        
        .x-window-header-text-default {
        font-size: 13px;
        }
        
    </style>
</head>
<body>
<ext:ResourceManager ID="ResourceManager1" runat="server" Theme="Gray" />

    <%--COMIENZA VENTANA PARA CONSULTA DE CLIENTES--%>

    <ext:Window 
            ID="wdConsultaCliente" 
            runat="server" 
            Title="Clientes - Consulta de Clientes"  
            Icon="UserMagnify"
            Height="600" 
            Width="800"
            BodyStyle="background-color: #fff;" 
            Hidden="true"
            Modal="true">
            <Items>

            <ext:FormPanel 
                ID="FormPanel2" 
                runat="server" 
                Height="350" 
                Layout="ColumnLayout">
            <Items>

                <ext:Panel ID="Panel3" runat="server"  ColumnWidth="1" Height="390">
                <Items>

                    <ext:GridPanel ID="GridPanel1" 
                    runat="server" 
                    Border="false"
                    Height="325">

                    <TopBar>
                        <ext:Toolbar ID="Toolbar1" runat="server">
                        <Items>
                            <ext:ToolbarFill ID="ToolbarFill1" runat="server" />                       
                                   
                            <ext:Button ID="Button3" 
                            runat="server" 
                            Text="Actualizar Información" 
                            Icon="ArrowRefresh" 
                            OnDirectClick="ReloadData"
                            />                   
                        </Items>
                        </ext:Toolbar>
                    </TopBar>

                    <Store>
                        <ext:Store ID="storeClientes" runat="server">
                        <Model>
                            <ext:Model ID="Model3" runat="server" IDProperty="Id">                                        
                            <Fields>
                                <ext:ModelField Name="Id" />
                                <ext:ModelField Name="Nombre" />
                                <ext:ModelField Name="RFC" />
                                <ext:ModelField Name="Telefono" />
                                <ext:ModelField Name="Email" />
                                <ext:ModelField Name="Direccion" />
                            </Fields>
                            </ext:Model>
                        </Model>
                        </ext:Store>
                    </Store>

                    <ColumnModel ID="ColumnModel1" runat="server">
                        <Columns>
                            <ext:Column ID="Column1" runat="server" Text="Id. Cliente" DataIndex="Id" Flex="1" />
                            <ext:Column ID="Column2" runat="server" Text="Nombre / Razón Social" DataIndex="Nombre" Flex="2" />
                            <ext:Column ID="Column3" runat="server" Text="R.F.C." DataIndex="RFC" Flex="1" />
                            <ext:Column ID="Column4" runat="server" Text="Teléfono" DataIndex="Telefono" Flex="1" />
                            <ext:Column ID="Column5" runat="server" Text="Email" DataIndex="Email" Flex="1" />
                            <ext:Column ID="Column6" runat="server" Text="Dirección" DataIndex="Direccion" Flex="2" />
                        </Columns>
                    </ColumnModel>

                    <%--<SelectionModel>
                        <ext:RowSelectionModel ID="RowSelectionModel1" runat="server" Mode="Multi" />
                    </SelectionModel>   --%>         
                        
                    <View>
                        <ext:GridView ID="GridView1" 
                        runat="server"
                        ScrollOffset="2"
                        StripeRows="true"
                        TrackOver="true"
                        />
                    </View>
                    </ext:GridPanel>

                </Items>

                </ext:Panel>                    
                               
            </Items>                

            </ext:FormPanel>          

            <%---- Segundo panel para edición de los datos del cliente ----%>

            <ext:FormPanel ID="FormPanel3" 
                    runat="server" 
                    Title="Detalles del Cliente"
                    Icon="UserTick"
                    Height = "200"        
                    BodyPadding="3"
                    Border="false"
                    Frame="false" 
                    Layout="ColumnLayout">
            <Items>   

            <ext:Panel 
                runat="server" ColumnWidth=".5" BodyPadding="5"
                ID="panel4"
                Height="280"
                Frame="false" 
                Border="false" Layout="FormLayout">
        
                <Items>
                    <ext:FieldContainer 
                        ID="fieldIdCliente" 
                        runat="server" 
                        FieldLabel="Id. Cliente" 
                        AnchorHorizontal="100%"
                        Layout="HBoxLayout">

                        <Items>
                            <ext:DisplayField runat="server" ID="displayID" Text="99999" />       
                        </Items>

                    </ext:FieldContainer> 

                    <ext:FieldContainer 
                        ID="fieldClienteNombre" 
                        runat="server" 
                        FieldLabel="Nombre / Razón Social" 
                        AnchorHorizontal="100%"
                        Layout="HBoxLayout">

                        <Items>
                            <ext:DisplayField runat="server" ID="displayCliente" Text="Ricardo Daniel Rodríguez Ramírez" />       
                        </Items>

                    </ext:FieldContainer>   

                    <ext:FieldContainer 
                        ID="filedRFC" 
                        runat="server" 
                        FieldLabel="R.F.C." 
                        AnchorHorizontal="100%"
                        Layout="HBoxLayout">

                        <Items>
                            <ext:DisplayField runat="server" ID="displayRFC" Text="RORR860511GL6" />       
                        </Items>

                    </ext:FieldContainer>                     
                  
                </Items>
        
            </ext:Panel>

            <ext:Panel 
                runat="server" 
                ColumnWidth=".5" 
                BodyPadding="5"
                ID="panel5"
                Height="280"
                Frame="false" 
                Border="false" 
                Layout="FormLayout">
                
                <Items>
        
                    <ext:FieldContainer 
                        ID="FieldContainer2" 
                        runat="server" 
                        FieldLabel="Email" 
                        AnchorHorizontal="100%"
                        Layout="HBoxLayout">

                        <Items>
                            <ext:DisplayField runat="server" ID="displayMail" Text="ricardo.rodriguez@smartconsulting.mx" />       
                        </Items>

                    </ext:FieldContainer> 

                    <ext:FieldContainer 
                        ID="FieldContainer3" 
                        runat="server" 
                        FieldLabel="Teléfono" 
                        AnchorHorizontal="100%"
                        Layout="HBoxLayout">

                        <Items>
                            <ext:DisplayField runat="server" ID="displayTelefono" Text="444 8407286" />       
                        </Items>

                    </ext:FieldContainer>   

                    <ext:FieldContainer 
                        ID="fieldDireccion" 
                        runat="server" 
                        FieldLabel="Dirección" 
                        AnchorHorizontal="100%"
                        Layout="HBoxLayout">

                        <Items>
                            <ext:DisplayField runat="server" ID="displayDireccion" Text="" />       
                        </Items>

                    </ext:FieldContainer>                   
                </Items>       
            </ext:Panel>
    
            </Items>

            <Buttons>
                <ext:Button 
                    runat="server" 
                    ID="Button6" 
                    Text="Editar Información" 
                    Icon="DiskEdit">
                    <DirectEvents>
                        <Click OnEvent="EditaClienteClick" />
                    </DirectEvents>
                </ext:Button>

                <ext:Button 
                    runat="server" 
                    ID="Button4" 
                    Text="Cancelar" 
                    Icon="DiskError">
                    <DirectEvents>
                        <Click OnEvent="CierraClick" />
                    </DirectEvents>
                </ext:Button>
    
            </Buttons>
     </ext:FormPanel>

            </Items>
    </ext:Window>

    <%--TERMINA VENTANA PARA CONSULTA DE CLIENTES--%>

   <%-- STORE UTILIZADOS PARA LOS COMBOBOX DE ESTADO, MUNICIPIO, COLONIA--%>

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

    <%--TERMINAN STORE PARA ESTADO, MUNICIPIO, COLONIA--%>

    <%--VENTANA UTILIZADA PARA DAR DE ALTA UN CLIENTE NUEVO--%>

    <ext:Window 
            ID="wdClienteNuevo" 
            runat="server" 
            Title="Clientes - Nuevo Cliente"  
            Icon="UserAdd"
            Height="300" 
            Width="850"
            BodyStyle="background-color: #fff;" 
            BodyPadding="5" Hidden="true"
            Modal="true">
            <Items>
            
            <ext:FormPanel ID="FormPanel1" 
            runat="server" 
            Height="260"          
            BodyPadding="3"
            Border="false"
            Frame="false" 
            Layout="ColumnLayout">
            <Items>   

            <ext:Panel 
            runat="server" ColumnWidth=".5" BodyPadding="5"
            ID="panel1"
            Height="250"
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
            <ext:TextField ID="txtNombreCliente" runat="server" EmptyText="Nombre" Margins="0 3 0 0"/>
            <ext:TextField ID="txtSegundoNombreCliente" runat="server" EmptyText="Segundo Nombre" Margins="0 3 0 0"/>                    
            </Items>

            </ext:FieldContainer>   

            <ext:FieldContainer 
            ID="fieldClienteApellidos" 
            runat="server" 
            FieldLabel="Apellido(s)" 
            AnchorHorizontal="100%"
            Layout="HBoxLayout">

            <Items>
            <ext:TextField ID="TextField3" runat="server" EmptyText="Primer Apellido" Margins="0 3 0 0" />
            <ext:TextField ID="TextField4" runat="server" EmptyText="Segundo Apellido" Margins="0 3 0 0" />                    
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
            ID="panel2"
            Height="250"
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
            <ext:TextField ID="TextField5" runat="server" EmptyText="No. Exterior..." Width="80"  Margins="0 3 0 0"/>
            <ext:TextField ID="TextField6" runat="server" EmptyText="No. Interior..." Width="80"/>
            </Items>
            </ext:FieldContainer>            
            
            <ext:FieldSet Border="false"></ext:FieldSet>               
            </Items>       
            </ext:Panel>
    
                </Items>

                <Buttons>
                    <ext:Button runat="server" ID="Button1" Text="Guardar" Icon="DiskUpload">
                        <DirectEvents>
                            <Click OnEvent="GuardaClienteClick" />
                        </DirectEvents>
                    </ext:Button>
                    <ext:Button runat="server" ID="Button2" Text="Cancelar" Icon="DiskError">
                        <DirectEvents>
                            <Click OnEvent="CierraClick" />
                        </DirectEvents>
                    </ext:Button>
    
                </Buttons>
     </ext:FormPanel>
            </Items>
        </ext:Window>

    <%--TERMINA VENTANA UTILIZADA PARA DAR DE ALTA UN CLIENTE NUEVO--%>

     <ext:FormPanel 
            runat="server" 
            Title="Alta de Juicio"
            Icon="BellAdd"             
            Height="330"
            Collapsible="true"      
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
                    <ext:TextField 
                        ID="txtCliente" 
                        runat="server" 
                        Width="150" 
                        Margins="0 5 0 0" />

                    <ext:Button 
                        runat="server" 
                        ID="btnBuscar" 
                        Margins="0 3 0 0" 
                        Icon="Magnifier" 
                        ToolTip="Buscar Cliente...">
                        <DirectEvents>
                            <Click OnEvent="ConsultaClienteClick" />
                        </DirectEvents>
                    </ext:Button>

                    <ext:Button 
                        runat="server" 
                        ID="btnNuevoCliente" 
                        Margins="0 3 0 0" 
                        Icon="UserAdd" 
                        ToolTip="Nuevo Cliente...">
                        <DirectEvents>
                            <Click OnEvent="ClienteNuevoClick" />
                        </DirectEvents>
                    </ext:Button>
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
            
            <ext:FieldSet Border="false"></ext:FieldSet>

             <ext:FieldSet ID="fsDemandado" 
                runat="server"
                Title="Demandado"
                Collapsible="false"
                Width="400" Padding="5">

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
        <ext:Button runat="server" ID="btnGuardar" Text="Guardar" Icon="DiskUpload">
            <DirectEvents>
                <Click OnEvent="GuardaJuicioClick" />
            </DirectEvents>
        </ext:Button>
        <ext:Button runat="server" ID="btnCancelar" Text="Cancelar" Icon="DiskError">
            
        </ext:Button>
    
    </Buttons>
     </ext:FormPanel>
</body>
</html>
