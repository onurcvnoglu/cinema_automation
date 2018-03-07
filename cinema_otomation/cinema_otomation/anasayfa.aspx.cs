using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace cinema_otomation
{
    public partial class anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            // SqlCommand com = new SqlCommand("select F.film_adi,G.salon_no,G.gosteri_zamani from Filmler F,gosteri G where G.gosteri_tarihi='2017-12-19'",con);
            SqlCommand com = new SqlCommand("select F.film_adi , G.salon_no , G.gosteri_zamani from Filmler F , gosteri G where F.film_id=G.film_id AND G.gosteri_tarihi='2017-12-19' group by G.salon_no,G.gosteri_zamani,F.film_adi", con);
            SqlDataReader dr = com.ExecuteReader();
           
             int sayac = 24;
            string[] puan_id = new string[6];
            string[] film_adlari = new string[sayac];
            string[] salon_no = new string[sayac];
            string[] gosteri_zamani = new string[sayac];
            for (int i = 0; i <= sayac; i++)
            {

                if(dr.Read())
                {
                    
                    film_adlari[i] = dr["film_adi"].ToString();
                    salon_no[i] = dr["salon_no"].ToString();
                    gosteri_zamani[i] = dr["gosteri_zamani"].ToString();
                }
            }
            DateTime saat = DateTime.Now;
                 
            Label8.Text = film_adlari[0];
            Label9.Text = film_adlari[4];
            Label10.Text = film_adlari[8];
            Label11.Text = film_adlari[12];
            Label12.Text = film_adlari[16];
            Label13.Text = film_adlari[20];
            Label1.Text =  salon_no[0];
            Label2.Text =  salon_no[4];
            Label3.Text =  salon_no[8];
            Label4.Text =  salon_no[12];
            Label5.Text =  salon_no[16];
            Label6.Text =  salon_no[20];
            LinkButton1.Text = gosteri_zamani[0];
            if (Convert.ToDateTime(gosteri_zamani[0]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"]==null )
            {
                LinkButton1.Enabled = false;
                
            }
            LinkButton2.Text = gosteri_zamani[1];
            if (Convert.ToDateTime(gosteri_zamani[1]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton2.Enabled = false;
            }
            LinkButton3.Text = gosteri_zamani[2];
            if (Convert.ToDateTime(gosteri_zamani[2]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton3.Enabled = false;
            }
            LinkButton4.Text = gosteri_zamani[3];
            if (Convert.ToDateTime(gosteri_zamani[3]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton4.Enabled = false;
            }

            LinkButton7.Text = gosteri_zamani[4];
            if (Convert.ToDateTime(gosteri_zamani[4]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton7.Enabled = false;
            }
            LinkButton8.Text = gosteri_zamani[5];
            if (Convert.ToDateTime(gosteri_zamani[5]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton8.Enabled = false;
            }
            LinkButton9.Text = gosteri_zamani[6];
            if (Convert.ToDateTime(gosteri_zamani[6]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton9.Enabled = false;
            }
            LinkButton10.Text = gosteri_zamani[7];
            if (Convert.ToDateTime(gosteri_zamani[7]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton10.Enabled = false;
            }
            LinkButton13.Text = gosteri_zamani[8];
            if (Convert.ToDateTime(gosteri_zamani[8]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton13.Enabled = false;
            }
            LinkButton14.Text = gosteri_zamani[9];
            if (Convert.ToDateTime(gosteri_zamani[9]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton14.Enabled = false;
            }
            LinkButton15.Text = gosteri_zamani[10];
            if (Convert.ToDateTime(gosteri_zamani[10]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton15.Enabled = false;
            }
            LinkButton16.Text = gosteri_zamani[11];
            if (Convert.ToDateTime(gosteri_zamani[11]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton16.Enabled = false;
            }
            LinkButton19.Text = gosteri_zamani[12];
            if (Convert.ToDateTime(gosteri_zamani[12]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton19.Enabled = false;
            }
            LinkButton20.Text = gosteri_zamani[13];
            if (Convert.ToDateTime(gosteri_zamani[13]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton20.Enabled = false;
            }
            LinkButton21.Text = gosteri_zamani[14];
            if (Convert.ToDateTime(gosteri_zamani[14]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton21.Enabled = false;
            }
            LinkButton22.Text = gosteri_zamani[15];
            if (Convert.ToDateTime(gosteri_zamani[15]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton22.Enabled = false;
            }
            LinkButton25.Text = gosteri_zamani[16];
            if (Convert.ToDateTime(gosteri_zamani[16]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton25.Enabled = false;
            }
            LinkButton26.Text = gosteri_zamani[17];
            if (Convert.ToDateTime(gosteri_zamani[17]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton26.Enabled = false;
            }
            LinkButton27.Text = gosteri_zamani[18];
            if (Convert.ToDateTime(gosteri_zamani[18]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton27.Enabled = false;
            }
            LinkButton28.Text = gosteri_zamani[19];
            if (Convert.ToDateTime(gosteri_zamani[19]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton28.Enabled = false;
            }
            LinkButton31.Text = gosteri_zamani[20];
            if (Convert.ToDateTime(gosteri_zamani[20]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton31.Enabled = false;
            }
            LinkButton32.Text = gosteri_zamani[21];
            if (Convert.ToDateTime(gosteri_zamani[21]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton32.Enabled = false;
            }
            LinkButton33.Text = gosteri_zamani[22];
            if (Convert.ToDateTime(gosteri_zamani[22]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton33.Enabled = false;
            }
            LinkButton34.Text = gosteri_zamani[23];
            if (Convert.ToDateTime(gosteri_zamani[23]) < Convert.ToDateTime(saat.ToLongTimeString()) || Session["musteri_id"] == null)
            {
                LinkButton34.Enabled = false;
            }
            con.Close();
            con.Open();
                string begeni = "select begeni_sayisi from Puan";
                SqlCommand cmd = new SqlCommand(begeni, con);
                SqlDataReader dr3 = cmd.ExecuteReader();
                for (int i = 0; i < 6; i++)
                {

                    if (dr3.Read())
                    {
                        puan_id[i] = dr3["begeni_sayisi"].ToString();
                    }
                }
                Label7.Text = puan_id[0];
                Label14.Text = puan_id[1];
                Label15.Text = puan_id[2];
                Label16.Text = puan_id[3];
                Label17.Text = puan_id[4];
                Label18.Text = puan_id[5];
            con.Close();
            if (Session["musteri_id"]==null || Session["like1"]=="like")
            {
                LinkButton5.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["dislike1"] == "dislike")
            {
                LinkButton6.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["like2"] == "like")
            {
                LinkButton11.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["dislike2"] == "dislike")
            {
                LinkButton12.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["like3"] == "like")
            {
                LinkButton17.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["dislike3"] == "dislike")
            {
                LinkButton18.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["like4"] == "like")
            {
                LinkButton23.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["dislike4"] == "dislike")
            {
                LinkButton24.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["like5"] == "like")
            {
                LinkButton29.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["dislike5"] == "dislike")
            {
                LinkButton30.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["like6"] == "like")
            {
                LinkButton35.Enabled = false;
            }
            if (Session["musteri_id"] == null || Session["dislike6"] == "dislike")
            {
                LinkButton36.Enabled = false;
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label1.Text;
            Session["film_adi"] = Label8.Text;
            Session["seans_saat"] = LinkButton1.Text;
            Response.Redirect("bilet_satis.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label1.Text;
            Session["film_adi"] = Label8.Text;
            Session["seans_saat"] = LinkButton2.Text;
            Response.Redirect("bilet_satis.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label1.Text;
            Session["film_adi"] = Label8.Text;
            Session["seans_saat"] = LinkButton3.Text;
            Response.Redirect("bilet_satis.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label1.Text;
            Session["film_adi"] = Label8.Text;
            Session["seans_saat"] = LinkButton4.Text;
            Response.Redirect("bilet_satis.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label2.Text;
            Session["film_adi"] = Label9.Text;
            Session["seans_saat"] = LinkButton7.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label2.Text;
            Session["film_adi"] = Label9.Text;
            Session["seans_saat"] = LinkButton8.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label2.Text;
            Session["film_adi"] = Label9.Text;
            Session["seans_saat"] = LinkButton9.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label2.Text;
            Session["film_adi"] = Label9.Text;
            Session["seans_saat"] = LinkButton10.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label3.Text;
            Session["film_adi"] = Label10.Text;
            Session["seans_saat"] = LinkButton16.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label3.Text;
            Session["film_adi"] = Label10.Text;
            Session["seans_saat"] = LinkButton15.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label3.Text;
            Session["film_adi"] = Label10.Text;
            Session["seans_saat"] = LinkButton14.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label3.Text;
            Session["film_adi"] = Label10.Text;
            Session["seans_saat"] = LinkButton13.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton19_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label4.Text;
            Session["film_adi"] = Label11.Text;
            Session["seans_saat"] = LinkButton19.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton20_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label4.Text;
            Session["film_adi"] = Label11.Text;
            Session["seans_saat"] = LinkButton20.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton21_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label4.Text;
            Session["film_adi"] = Label11.Text;
            Session["seans_saat"] = LinkButton21.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton22_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label4.Text;
            Session["film_adi"] = Label11.Text;
            Session["seans_saat"] = LinkButton22.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton25_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label5.Text;
            Session["film_adi"] = Label12.Text;
            Session["seans_saat"] = LinkButton25.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton26_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label5.Text;
            Session["film_adi"] = Label12.Text;
            Session["seans_saat"] = LinkButton26.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton27_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label5.Text;
            Session["film_adi"] = Label12.Text;
            Session["seans_saat"] = LinkButton27.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton28_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label5.Text;
            Session["film_adi"] = Label12.Text;
            Session["seans_saat"] = LinkButton28.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton31_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label6.Text;
            Session["film_adi"] = Label13.Text;
            Session["seans_saat"] = LinkButton31.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton32_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label6.Text;
            Session["film_adi"] = Label3.Text;
            Session["seans_saat"] = LinkButton32.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton33_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label6.Text;
            Session["film_adi"] = Label13.Text;
            Session["seans_saat"] = LinkButton33.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton34_Click(object sender, EventArgs e)
        {
            Session["salon_no"] = Label6.Text;
            Session["film_adi"] = Label13.Text;
            Session["seans_saat"] = LinkButton34.Text;
            Response.Redirect("bilet_satis.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session["like1"] = "like";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='"+ (Convert.ToInt32(Label7.Text) + 1) + "' where puan_id='"+1+"'", con);
            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Session["dislike1"] = "dislike";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label7.Text) - 1) + "' where puan_id='" + 1 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Session["like2"] = "like";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label14.Text) + 1) + "' where puan_id='" + 2 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Session["dislike2"] = "dislike";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label14.Text) - 1) + "' where puan_id='" + 2 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            Session["like3"] = "like";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label15.Text) + 1) + "' where puan_id='" + 3 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton18_Click(object sender, EventArgs e)
        {
            Session["dislike3"] = "dislike";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label15.Text) - 1) + "' where puan_id='" + 3 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton23_Click(object sender, EventArgs e)
        {
            Session["like4"] = "like";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label16.Text) + 1) + "' where puan_id='" + 4 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton24_Click(object sender, EventArgs e)
        {
            Session["dislike4"] = "dislike";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label16.Text) - 1) + "' where puan_id='" + 4 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton29_Click(object sender, EventArgs e)
        {
            Session["like5"] = "like";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label17.Text) + 1) + "' where puan_id='" + 5 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton30_Click(object sender, EventArgs e)
        {
            Session["dislike5"] = "dislike";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label17.Text) - 1) + "' where puan_id='" + 5 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton35_Click(object sender, EventArgs e)
        {
            Session["like6"] = "like";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label18.Text) + 1) + "' where puan_id='" + 6 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("anasayfa.aspx");
        }

        protected void LinkButton36_Click(object sender, EventArgs e)
        {
            Session["dislike6"] = "dislike";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand komut = new SqlCommand("update Puan set begeni_sayisi='" + (Convert.ToInt32(Label18.Text) - 1) + "' where puan_id='" + 6 + "'", con);
            komut.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("anasayfa.aspx");
        }
    }
}