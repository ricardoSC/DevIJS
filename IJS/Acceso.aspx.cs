using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;

namespace IJS
{
    public partial class Acceso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Función Ligada al Botón de ACCESO.
        /// 
        /// Se encarga de validar el acceso al momento dar click.
        /// 
        /// Se llama al metodo WM_INICIA_SESSION, el cual recibe el valor de txtUser y txtPass, envía estos parametros al WS, y se encarga de verificar que
        /// el usuario tenga acceso al portal de administración.
        ///
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void ValidaAcceso(object sender, EventArgs e)
        {
            wsIJS.wsIJS clienteIJS = new wsIJS.wsIJS();
            wsIJS.INICIA_SESION sesionIJS = new wsIJS.INICIA_SESION();

            sesionIJS = clienteIJS.WM_INICIA_SESION(txtUser.Text, txtPass.Text);

            //COMENTARIO DE EJEMPLO PARA COMMIT EN GITHUB.

            if (sesionIJS.Error == 0)
            {
                Response.Redirect("/App/Main.aspx");
            }
            else
            {
                X.Msg.Alert("Error - Acceso Incorrecto", "Ha ocurrido un error al validar su inicio de sesión." + Environment.NewLine + "Verifique sus datos y vuelva a intentar").Show();
            }
        }
    }
}