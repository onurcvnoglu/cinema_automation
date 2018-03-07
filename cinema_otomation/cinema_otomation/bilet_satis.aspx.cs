using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cinema_otomation
{
    public partial class denemem : System.Web.UI.Page
    {
        int gosteriID;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = false;
            int count = 0;
            int tutar = 0;
            for (int i = 0; i <= CheckBoxList1.Items.Count-1; i++)
            {
                if (CheckBoxList1.Items[i].Selected && CheckBoxList1.Items[i].Enabled == true)
                {
                    CheckBoxList1.Enabled = false;
                    Button1.Enabled = true;
                    tutar += 10;
                    count++;
                }
                total.Text = tutar.ToString();
                counter.Text = count.ToString();
            }
            salon_no.Text = Session["salon_no"].ToString();
            film_adi.Text = Session["film_adi"].ToString();
            seans_saat.Text = Session["seans_saat"].ToString();
            List<int> koltuk_no = new List<int>();
            List<int> koltuk_no2 = new List<int>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand com = new SqlCommand("select B.koltuk_id from Bilet B, gosteri G ,Filmler F where B.gosteri_id=G.gosteri_id and G.salon_no='"+Convert.ToInt32(salon_no.Text) +"' and F.film_adi='"+film_adi.Text+"' and G.gosteri_zamani='"+seans_saat.Text+"'", con);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                string ad = dr["koltuk_id"].ToString();
                CheckBoxList1.Items[Convert.ToInt32(ad)-1].Selected = true;
                CheckBoxList1.Items[Convert.ToInt32(ad) - 1].Enabled = false;
            }
            dr.Close();
            con.Close();   
        }
        protected void Button1_Click(object sender, EventArgs e)
        {   
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            List<int> koltuk_numarası = new List<int>();
            for (int i = 0; i <= CheckBoxList1.Items.Count-1; i++)
            {
                if (CheckBoxList1.Items[i].Selected && CheckBoxList1.Items[i].Enabled==true)
                {
                    koltuk_numarası.Add(i);
                }
            }
            string gosteri_cek = "select gosteri_id from gosteri where salon_no='" + Convert.ToInt32(salon_no.Text) + "' and gosteri_zamani='" + seans_saat.Text + "'";
            SqlCommand cek = new SqlCommand(gosteri_cek, con);
            SqlDataReader dr = cek.ExecuteReader();
            
            if (dr.Read())
            {
                gosteriID = Convert.ToInt32(dr["gosteri_id"].ToString());
                Session["gosteri_id"] = gosteriID.ToString();
            }
            dr.Close();
            con.Close();

            try
            {
                con.Open();
                for (int i = 0; i < koltuk_numarası.Count; i++)
                {
                    //koltuk tablosu ekleme
                    //SqlCommand com = new SqlCommand("insert into Bilet(koltuk_id,gosteri_id ) values(@koltuk_id,@gosteri_id)", con);
                    //SqlCommand comman = new SqlCommand("insert into Koltuk(koltuk_no,salon_id) values(@koltuk_no,@salon_id)", con);
                    //comman.Parameters.AddWithValue("@koltuk_no", koltuk_numarası[i] + 1);
                    //comman.Parameters.AddWithValue("@salon_id", salon_no.Text);
                    //comman.ExecuteNonQuery();
                    SqlCommand command = new SqlCommand("insert into Koltuk(koltuk_no,salon_id) values(@koltuk_no,@salon_id)", con);
                    command.Parameters.AddWithValue("@koltuk_no", koltuk_numarası[i] + 1);
                    command.Parameters.AddWithValue("@salon_id", salon_no.Text);
                    command.ExecuteNonQuery();
                    //procedure bilet tablosu ekleme-koltuk ekleme
                    SqlCommand com = new SqlCommand();
                    com.CommandType = CommandType.StoredProcedure;
                    com.CommandText = "bilet_koltuk_ekle";
                    com.Parameters.AddWithValue("@koltuk_id", koltuk_numarası[i] + 1);
                    com.Parameters.AddWithValue("@gosteri_id", gosteriID);
                    //com.Parameters.AddWithValue("@salon_id", Convert.ToInt32(salon_no.Text));
                    com.Connection = con;
                    com.ExecuteNonQuery();
                    Session["koltuk_id"] = koltuk_numarası[i] + 1;
                }
                //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "BAŞARILI", "<script>alert('Satın alma işlemi başarılı');</script>");
                Response.Redirect("odeme_sistemi.aspx");
            }
            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "HATA", "<script>alert('Satın alma işlemi başasız');</script>");
                //Response.Redirect("anasayfa.aspx");
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }
    }
}