using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IJS
{
    public partial class Acceso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Recuerda validar el acceso.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void ValidaAcceso(object sender, EventArgs e)
        {
            Response.Redirect("/App/Main.aspx");
        }
    }
}