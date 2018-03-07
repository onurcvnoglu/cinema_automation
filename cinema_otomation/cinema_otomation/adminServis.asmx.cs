using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace cinema_otomation
{
    /// <summary>
    /// adminServis için özet açıklama
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Bu Web Hizmeti'nin, ASP.NET AJAX kullanılarak komut dosyasından çağrılmasına, aşağıdaki satırı açıklamadan kaldırmasına olanak vermek için.
    // [System.Web.Script.Services.ScriptService]
    public class adminServis : System.Web.Services.WebService
    {
        [WebMethod]
        public DataSet GetMembers()
        {
            string query = String.Format("SELECT * FROM Musteri");
            return ExecuteQuery(query);
        }

        public DataSet ExecuteQuery(string query)
        {
            string baglanti = "Data Source =.\\SQLEXPRESS; Initial Catalog = cinema-otomasyon; Integrated Security = True;";
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.SelectCommand.ExecuteNonQuery();
            DataSet dt = new DataSet();
            da.Fill(dt);
            return dt;
        }

    }
}
