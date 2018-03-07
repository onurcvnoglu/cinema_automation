using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cinema_otomation
{
    public partial class ticketView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random pnr = new Random();
            int tick_pnr = pnr.Next(10000000, 99999999);
            ticket_movie.Text = Session["film_adi"].ToString();
            ticket_time.Text = Session["seans_saat"].ToString();
            ticket_name.Text = Session["musteri_adi"].ToString();
            ticket_surname.Text = Session["musteri_soyadi"].ToString();
            ticket_seat.Text = Session["koltuk_id"].ToString();
            ticket_pnr.Text = tick_pnr.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("anasayfa.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Bilet.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel2.DataBind();
            Panel2.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
    }
}