using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;

namespace IJS.App
{
    public partial class ClienteNuevo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void CheckPersona(object sender, EventArgs e)
        {
            if (chkFisica.Checked == true && chkMoral.Checked==false)
            {
                fieldClienteNombres.FieldLabel = "Nombre(s)";
                txtSegundoNombre.Hidden = false;
                fieldClienteApellidos.Hidden = false;                
            }

            if (chkMoral.Checked == true && chkFisica.Checked==false)
            {
                fieldClienteNombres.FieldLabel = "Razón Social";
                txtSegundoNombre.Hidden = true;
                fieldClienteApellidos.Hidden = true;
            }
        }

        protected void btnBuscaCP_DirectClick(object sender, DirectEventArgs e)
        {
            bool cpcheck;
            cpcheck = true;
            Session["BuscaCP"] = cpcheck;
            cbColonia.Enable();
            cbEstado.Enable();
            cbMunicipio.Enable();
        }
    }
}