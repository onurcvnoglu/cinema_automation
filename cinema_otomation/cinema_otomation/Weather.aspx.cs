using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace cinema_otomation
{
    public partial class Weather : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference1.GlobalWeatherSoapClient HavaDurumu = new ServiceReference1.GlobalWeatherSoapClient();
            XmlDocument xml = new XmlDocument();
            xml.LoadXml(HavaDurumu.GetCitiesByCountry("Turkey"));
            XmlNodeList Nodelar = xml.SelectNodes("NewDataSet/Table/City");
            foreach (XmlNode item in Nodelar)
            {
                DropDownList1.Items.Add(item.InnerText);
                //InnerText özelliği ile o anki node ın içindeki yazan değeri alır.
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ServiceReference1.GlobalWeatherSoapClient HavaDurumu = new ServiceReference1.GlobalWeatherSoapClient();
            ListBox1.Items.Clear();
            XmlDocument xml = new XmlDocument();
            xml.LoadXml(HavaDurumu.GetWeather(DropDownList1.Text, "Turkey"));
            ListBox1.Items.Add("Tarih-Zaman : " + xml.SelectSingleNode("CurrentWeather/Time").InnerText);
            ListBox1.Items.Add("Rüzgar : " + xml.SelectSingleNode("CurrentWeather/Wind").InnerText);
            ListBox1.Items.Add("Sıcaklık : " + xml.SelectSingleNode("CurrentWeather/Temperature").InnerText);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}