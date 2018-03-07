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
    public partial class odeme_sistemi : System.Web.UI.Page
    {
        int odeme_biletId;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            string odeme_koltukId = Session["koltuk_id"].ToString();
            string odeme_gosteriId = Session["gosteri_id"].ToString();
            string bilet_id = "select bilet_id from Bilet where koltuk_id='" + Convert.ToInt32(odeme_koltukId) + "' and gosteri_id='" + Convert.ToInt32(odeme_gosteriId) + "'";
            SqlCommand cmd = new SqlCommand(bilet_id,con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                odeme_biletId = Convert.ToInt32(dr["bilet_id"].ToString());
            }
            dr.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int bilet_tutar = 10;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand com = new SqlCommand("insert into Gelir(salon_id,adet,toplam_tutar) values(@salon_id,@adet,@toplam_tutar)", con);
            com.Parameters.AddWithValue("@salon_id", Convert.ToInt32(Session["salon_no"].ToString()));
            com.Parameters.AddWithValue("@adet", 1);
            com.Parameters.AddWithValue("@toplam_tutar", 0);
            com.ExecuteNonQuery();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "bilet_satis";
            //string kayit = "insert into Satis(musteri_id,cart_no,pin,tutar,bilet_id) values (@musteri_id,@cart_no,@pin,@tutar,@bilet_id)";
            //SqlCommand komut = new SqlCommand(kayit, con);
            //komut.Parameters.AddWithValue("@musteri_id", Convert.ToInt32(Session["musteri_id"].ToString()));
            //komut.Parameters.AddWithValue("@cart_no", TextBox1.Text);
            //komut.Parameters.AddWithValue("@pin", TextBox2.Text);
            //komut.Parameters.AddWithValue("@tutar", bilet_tutar);
            //komut.Parameters.AddWithValue("@bilet_id", odeme_biletId);
            //komut.ExecuteNonQuery();

            cmd.Parameters.AddWithValue("@musteri_id", Convert.ToInt32(Session["musteri_id"].ToString()));
            cmd.Parameters.AddWithValue("@cart_no", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pin", TextBox2.Text);
            cmd.Parameters.AddWithValue("@tutar", bilet_tutar);
            cmd.Parameters.AddWithValue("@bilet_id", odeme_biletId);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "BAŞARILI", "<script>alert('Satın alma işlemi başarılı');</script>");
            Response.Redirect("ticketView.aspx");
        }
    }
}