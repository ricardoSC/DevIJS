using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;

namespace IJS.App
{
    public partial class ClienteConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            displayDireccion.Text = "Margarita Castro de Moctezuma #432" + Environment.NewLine + "Ricardo B. Anaya 2a. Sección" + Environment.NewLine + "San Luis Potosí";
        }

        protected void ReloadData(object sender, DirectEventArgs e)
        {
            //Store1.DataBind();
            //Store3.DataBind();
        }

        protected void ActualizaFecha(object sender, DirectEventArgs e)
        {
            wdFechas.Show();
        }

        protected void Update(object sender, DirectEventArgs e)
        {
            wdFechas.Hide();
        }

        protected void Close(object sender, DirectEventArgs e)
        {
            wdFechas.Hide();
        }

        protected void ToExcel(object sender, EventArgs e)
        {
            //string json = this.Hidden1.Value.ToString();
            //StoreSubmitDataEventArgs eSubmit = new StoreSubmitDataEventArgs(json, null);
            //XmlNode xml = eSubmit.Xml;

            //this.Response.Clear();
            //this.Response.ContentType = "application/vnd.ms-excel";
            //this.Response.AddHeader("Content-Disposition", "attachment; filename=submittedData.xls");

            //XslCompiledTransform xtExcel = new XslCompiledTransform();

            //xtExcel.Load(Server.MapPath("../Template/Excel.xsl"));
            //xtExcel.Transform(xml, null, this.Response.OutputStream);
            //this.Response.End();
        }

        protected void ToCsv(object sender, EventArgs e)
        {
            //string json = this.Hidden1.Value.ToString();
            //StoreSubmitDataEventArgs eSubmit = new StoreSubmitDataEventArgs(json, null);
            //XmlNode xml = eSubmit.Xml;

            //this.Response.Clear();
            //this.Response.ContentType = "application/octet-stream";
            //this.Response.AddHeader("Content-Disposition", "attachment; filename=submittedData.csv");

            //XslCompiledTransform xtCsv = new XslCompiledTransform();

            //xtCsv.Load(Server.MapPath("../Template/Csv.xsl"));
            //xtCsv.Transform(xml, null, this.Response.OutputStream);
            //this.Response.End();
        }

    }
}