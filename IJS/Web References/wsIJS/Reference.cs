﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.586
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

// 
// Microsoft.VSDesigner generó automáticamente este código fuente, versión=4.0.30319.586.
// 
#pragma warning disable 1591

namespace IJS.wsIJS {
    using System;
    using System.Web.Services;
    using System.Diagnostics;
    using System.Web.Services.Protocols;
    using System.ComponentModel;
    using System.Xml.Serialization;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="wsIJSSoap", Namespace="http://tempuri.org/")]
    public partial class wsIJS : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback WM_INICIA_SESIONOperationCompleted;
        
        private System.Threading.SendOrPostCallback WM_LEER_ACCESOSOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public wsIJS() {
            this.Url = global::IJS.Properties.Settings.Default.IJS_wsIJS_wsIJS;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event WM_INICIA_SESIONCompletedEventHandler WM_INICIA_SESIONCompleted;
        
        /// <remarks/>
        public event WM_LEER_ACCESOSCompletedEventHandler WM_LEER_ACCESOSCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/WM_INICIA_SESION", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public INICIA_SESION WM_INICIA_SESION(string Usuario, string Clave) {
            object[] results = this.Invoke("WM_INICIA_SESION", new object[] {
                        Usuario,
                        Clave});
            return ((INICIA_SESION)(results[0]));
        }
        
        /// <remarks/>
        public void WM_INICIA_SESIONAsync(string Usuario, string Clave) {
            this.WM_INICIA_SESIONAsync(Usuario, Clave, null);
        }
        
        /// <remarks/>
        public void WM_INICIA_SESIONAsync(string Usuario, string Clave, object userState) {
            if ((this.WM_INICIA_SESIONOperationCompleted == null)) {
                this.WM_INICIA_SESIONOperationCompleted = new System.Threading.SendOrPostCallback(this.OnWM_INICIA_SESIONOperationCompleted);
            }
            this.InvokeAsync("WM_INICIA_SESION", new object[] {
                        Usuario,
                        Clave}, this.WM_INICIA_SESIONOperationCompleted, userState);
        }
        
        private void OnWM_INICIA_SESIONOperationCompleted(object arg) {
            if ((this.WM_INICIA_SESIONCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.WM_INICIA_SESIONCompleted(this, new WM_INICIA_SESIONCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/WM_LEER_ACCESOS", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public LEER_ACCESOS[] WM_LEER_ACCESOS(string Usuario) {
            object[] results = this.Invoke("WM_LEER_ACCESOS", new object[] {
                        Usuario});
            return ((LEER_ACCESOS[])(results[0]));
        }
        
        /// <remarks/>
        public void WM_LEER_ACCESOSAsync(string Usuario) {
            this.WM_LEER_ACCESOSAsync(Usuario, null);
        }
        
        /// <remarks/>
        public void WM_LEER_ACCESOSAsync(string Usuario, object userState) {
            if ((this.WM_LEER_ACCESOSOperationCompleted == null)) {
                this.WM_LEER_ACCESOSOperationCompleted = new System.Threading.SendOrPostCallback(this.OnWM_LEER_ACCESOSOperationCompleted);
            }
            this.InvokeAsync("WM_LEER_ACCESOS", new object[] {
                        Usuario}, this.WM_LEER_ACCESOSOperationCompleted, userState);
        }
        
        private void OnWM_LEER_ACCESOSOperationCompleted(object arg) {
            if ((this.WM_LEER_ACCESOSCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.WM_LEER_ACCESOSCompleted(this, new WM_LEER_ACCESOSCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <comentarios/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.450")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class INICIA_SESION {
        
        private int errorField;
        
        private string msgErrorField;
        
        private string aPaternoField;
        
        private string aMaternoField;
        
        private string nombreField;
        
        private int idGrupoUsuarioField;
        
        /// <comentarios/>
        public int Error {
            get {
                return this.errorField;
            }
            set {
                this.errorField = value;
            }
        }
        
        /// <comentarios/>
        public string MsgError {
            get {
                return this.msgErrorField;
            }
            set {
                this.msgErrorField = value;
            }
        }
        
        /// <comentarios/>
        public string APaterno {
            get {
                return this.aPaternoField;
            }
            set {
                this.aPaternoField = value;
            }
        }
        
        /// <comentarios/>
        public string AMaterno {
            get {
                return this.aMaternoField;
            }
            set {
                this.aMaternoField = value;
            }
        }
        
        /// <comentarios/>
        public string Nombre {
            get {
                return this.nombreField;
            }
            set {
                this.nombreField = value;
            }
        }
        
        /// <comentarios/>
        public int IdGrupoUsuario {
            get {
                return this.idGrupoUsuarioField;
            }
            set {
                this.idGrupoUsuarioField = value;
            }
        }
    }
    
    /// <comentarios/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.450")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class LEER_ACCESOS {
        
        private int idAccesoField;
        
        private string idTransaccionField;
        
        /// <comentarios/>
        public int IdAcceso {
            get {
                return this.idAccesoField;
            }
            set {
                this.idAccesoField = value;
            }
        }
        
        /// <comentarios/>
        public string IdTransaccion {
            get {
                return this.idTransaccionField;
            }
            set {
                this.idTransaccionField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void WM_INICIA_SESIONCompletedEventHandler(object sender, WM_INICIA_SESIONCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class WM_INICIA_SESIONCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal WM_INICIA_SESIONCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public INICIA_SESION Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((INICIA_SESION)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void WM_LEER_ACCESOSCompletedEventHandler(object sender, WM_LEER_ACCESOSCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class WM_LEER_ACCESOSCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal WM_LEER_ACCESOSCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public LEER_ACCESOS[] Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((LEER_ACCESOS[])(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591