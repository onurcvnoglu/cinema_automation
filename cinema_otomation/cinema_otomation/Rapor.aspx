<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Rapor.aspx.cs" Inherits="cinema_otomation.Rapor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
            <h3>Gosteri Tablosu</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="salon_no" HeaderText="salon_no" SortExpression="salon_no" />
                    <asp:BoundField DataField="gosteri_tarihi" HeaderText="gosteri_tarihi" SortExpression="gosteri_tarihi" />
                    <asp:BoundField DataField="gosteri_zamani" HeaderText="gosteri_zamani" SortExpression="gosteri_zamani" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cinema-otomasyonConnectionString %>" SelectCommand="SELECT [salon_no], [gosteri_tarihi], [gosteri_zamani] FROM [gosteri]"></asp:SqlDataSource>
            <h3>Müşteri Tablosu</h3>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="musteri_adi" HeaderText="musteri_adi" SortExpression="musteri_adi" />
                    <asp:BoundField DataField="musteri_soyadi" HeaderText="musteri_soyadi" SortExpression="musteri_soyadi" />
                    <asp:BoundField DataField="telefon_no" HeaderText="telefon_no" SortExpression="telefon_no" />
                    <asp:BoundField DataField="e_mail" HeaderText="e_mail" SortExpression="e_mail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cinema-otomasyonConnectionString %>" SelectCommand="SELECT [musteri_adi], [musteri_soyadi], [telefon_no], [e_mail] FROM [Musteri]"></asp:SqlDataSource>
            <h3>Filmler Tablosu</h3>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="film_adi" HeaderText="film_adi" SortExpression="film_adi" />
                    <asp:BoundField DataField="IMDB" HeaderText="IMDB" SortExpression="IMDB" />
                    <asp:BoundField DataField="film_suresi" HeaderText="film_suresi" SortExpression="film_suresi" />
                    <asp:BoundField DataField="film_fiyati" HeaderText="film_fiyati" SortExpression="film_fiyati" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cinema-otomasyonConnectionString %>" SelectCommand="SELECT [film_adi], [IMDB], [film_suresi], [film_fiyati] FROM [Filmler]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="PDF" OnClick="Button1_Click" />
        </asp:Panel>
    </form>
</body>
</html>
