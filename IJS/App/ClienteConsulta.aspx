<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteConsulta.aspx.cs" Inherits="IJS.App.ClienteConsulta" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style>
        .x-form-item-label 
        {
            display: block;
            padding: 3px 0 0;
            font-size: 13px;
            font-weight: bold;
        }
        
        .x-form-field, .x-form-display-field 
        {
            margin: 0;
            font: bold 12px tahoma,arial,verdana,sans-serif;
            color: #405569;
        }
    </style>

    <script>
        var onKeyUp = function () {
            var me = this,
                v = me.getValue(),
                field;

            if (me.startDateField) {
                field = Ext.getCmp(me.startDateField);
                field.setMaxValue(v);
                me.dateRangeMax = v;
            } else if (me.endDateField) {
                field = Ext.getCmp(me.endDateField);
                field.setMinValue(v);
                me.dateRangeMin = v;
            }

            field.validate();
        };

        var saveData = function () {
            App.Hidden1.setValue(Ext.encode(App.GridPanel1.getRowsValues({ selectedOnly: false })));
        };
    </script>

</head>
<body>
   
   <ext:ResourceManager ID="ResourceManager1" runat="server" Theme="Gray" />

    <ext:Window ID="wdFechas" 
        runat="server" 
        Width="250" Height="125"
        Title="Selecciona la fecha..."
        Icon="Date"
        AutoHeight="true"
        Closable="false"
        BodyPadding="5"
        Layout="Anchor"
        DefaultAnchor="100%" Hidden="true" ButtonAlign="Center">
    <Items>

    <ext:DateField 
        ID="DateField1" 
        runat="server"
        Vtype="daterange"
        FieldLabel="Fecha Inicio"
        EnableKeyEvents="true">  

        <CustomConfig>
            <ext:ConfigItem Name="endDateField" Value="DateField2" Mode="Value" />
        </CustomConfig>

        <Listeners>
            <KeyUp Fn="onKeyUp" />
        </Listeners>

    </ext:DateField>
                                    
    <ext:DateField 
        ID="DateField2"
        runat="server" 
        Vtype="daterange"
        FieldLabel="Fecha Fin"
        EnableKeyEvents="true">    

        <CustomConfig>
            <ext:ConfigItem Name="startDateField" Value="DateField1" Mode="Value" />
        </CustomConfig>

        <Listeners>
            <KeyUp Fn="onKeyUp" />
        </Listeners>

    </ext:DateField>
                
    </Items>           
    <Buttons>
        <ext:Button ID="Button117" 
        runat="server" 
        Text="Aceptar" 
        Icon="Accept" 
        OnDirectClick="Update"
        />     
                                    
        <ext:Button ID="Button118" 
        runat="server" 
        Text="Cancelar" 
        Icon="Decline" 
        OnDirectClick="Close"
        />  
    </Buttons>
    </ext:Window>  

    <ext:FormPanel 
        ID="FormPanel1" 
        runat="server" 
        Title="Consulta de Clientes" 
        Icon="UserMagnify"  
        Height="350" 
        Layout="ColumnLayout" 
        Collapsible="true">
    <Items>

        <ext:Panel ID="Panel1" runat="server"  ColumnWidth="1" Height="390">
        <Items>

            <ext:GridPanel ID="GridPanel1" 
            runat="server" 
            Border="false"
            Height="325">

            <TopBar>
                <ext:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <ext:ToolbarFill ID="ToolbarFill1" runat="server" />                       
                                   
                    <ext:Button ID="Button1" 
                    runat="server" 
                    Text="Actualizar Información" 
                    Icon="ArrowRefresh" 
                    OnDirectClick="ReloadData"
                    />                            
                                    
                    <ext:Button ID="Button4" 
                    runat="server" 
                    Text="Período" 
                    Icon="DateMagnify" 
                    OnDirectClick="ActualizaFecha"
                    />                                  
                                                
                    <ext:Button ID="Button2" runat="server" Text="Exportar a Excel" AutoPostBack="true" OnClick="ToExcel" Icon="PageExcel">
                        <Listeners>
                        <Click Fn="saveData" />
                        </Listeners>
                    </ext:Button>
                        
                    <ext:Button ID="Button3" runat="server" Text="Exportar a CSV" AutoPostBack="true" OnClick="ToCsv" Icon="PageAttach">
                        <Listeners>
                        <Click Fn="saveData" />
                        </Listeners>
                    </ext:Button>
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

    <ext:FormPanel ID="FormPanel2" 
            runat="server" 
            Title="Detalles del Cliente"
            Icon="UserTick"
            Height = "200"        
            BodyPadding="3"
            Border="false"
            Frame="false" 
            Layout="ColumnLayout" 
            Collapsible="true">
    <Items>   

    <ext:Panel 
        runat="server" ColumnWidth=".5" BodyPadding="5"
        ID="panelLeft"
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
        ID="panelRight"
        Height="280"
        Frame="false" 
        Border="false" 
        Layout="FormLayout">
                
        <Items>
        
            <ext:FieldContainer 
                ID="fieldEmail" 
                runat="server" 
                FieldLabel="Email" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout">

                <Items>
                    <ext:DisplayField runat="server" ID="displayMail" Text="ricardo.rodriguez@smartconsulting.mx" />       
                </Items>

            </ext:FieldContainer> 

            <ext:FieldContainer 
                ID="fieldTelefono" 
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
        <ext:Button runat="server" ID="btnGuardar" Text="Editar Información" Icon="DiskEdit" />
    
    </Buttons>
     </ext:FormPanel>

</body>
</html>
