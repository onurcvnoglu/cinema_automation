using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cinema_otomation
{
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["musteri_id"] != null)
            {
                ButtonSingin.Visible = false;
                DropDownList1.Visible = true;
            }
            else
            {
                ButtonSingin.Visible = true;
                DropDownList1.Visible = false;
            }
            if (DropDownList1.SelectedItem.Text=="Hesabım")
            {
                Response.Redirect("musteri_hesabi.aspx");
            }
            if (DropDownList1.SelectedItem.Text == "Çıkış Yap")
            {
                Session.Clear();
                Response.Redirect("anasayfa.aspx");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanici_giris.aspx");
        }
    }
}