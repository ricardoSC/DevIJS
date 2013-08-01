using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;

namespace IJS.App
{
    public partial class JuicioNuevo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            displayDireccion.Text = "Margarita Castro de Moctezuma #432" + Environment.NewLine + "Ricardo B. Anaya 2a. Sección" + Environment.NewLine + "San Luis Potosí";        
        }

        protected void GuardaClienteClick(object sender, DirectEventArgs e)
        {
        }

        protected void GuardaJuicioClick(object sender, DirectEventArgs e)
        {
        }

        protected void EditaClienteClick(object sender, DirectEventArgs e)
        {
        }
               
        protected void CierraClick(object sender, DirectEventArgs e)
        {
            this.wdClienteNuevo.Close();
            this.wdConsultaCliente.Close();
        }

        protected void ClienteNuevoClick(object sender, DirectEventArgs e)
        {
            this.wdClienteNuevo.Show();
        }

        protected void ConsultaClienteClick(object sender, DirectEventArgs e)
        {
            this.wdConsultaCliente.Show();
        }

        protected void ReloadData(object sender, DirectEventArgs e)
        {
        }

        public void CheckPersona(object sender, EventArgs e)
        {
            if (chkFisica.Checked == true && chkMoral.Checked == false)
            {
                fieldClienteNombres.FieldLabel = "Nombre(s)";
                txtSegundoNombreCliente.Show();
                fieldClienteApellidos.Show();
            }

            if (chkMoral.Checked == true && chkFisica.Checked == false)
            {
                fieldClienteNombres.FieldLabel = "Razón Social";
                txtSegundoNombreCliente.Hide();
                fieldClienteApellidos.Hide();
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