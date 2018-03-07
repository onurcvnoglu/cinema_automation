using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

namespace cinema_otomation
{
    public partial class kullani_olustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayit_ol.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string baglanti = "Data Source =.\\SQLEXPRESS; Initial Catalog = cinema-otomasyon; Integrated Security = True;";
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            string m_email = TextBox1.Text;
            string m_parola = TextBox2.Text;
            SqlCommand komut = new SqlCommand("select * from Musteri where e_mail='" + m_email + "' and porola='" + m_parola + "'", con);
            SqlCommand cmd = new SqlCommand("select * from Yonetici where adi='" + m_email + "' and parola='" + m_parola + "'", con);
            SqlDataReader dr=komut.ExecuteReader();
            if (dr.Read())
            {
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, dr["musteri_adi"].ToString(), DateTime.Now, DateTime.Now.AddMinutes(60),false,FormsAuthentication.FormsCookiePath);
                string encTicket = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encTicket);
                if (ticket.IsPersistent) cookie.Expires = ticket.Expiration;
                Response.Cookies.Add(cookie);

                Session["musteri_adi"] = dr["musteri_adi"].ToString();
                Session["musteri_soyadi"] = dr["musteri_soyadi"].ToString();
                Session["musteri_id"] = dr["musteri_id"].ToString();
                Response.Redirect("anasayfa.aspx");
            }
            dr.Close();
            SqlDataReader dr2 = cmd.ExecuteReader();
            if (dr2.Read())
            {
                if (Convert.ToInt32(dr2["yonetici_id"])==2)
                {
                    Session["yonetici_girisi"] = "here";
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Response.Redirect("admin.aspx");
                }
                
            }
            dr2.Close();
            con.Close();
            

        }
    }
}