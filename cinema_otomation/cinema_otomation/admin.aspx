<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="cinema_otomation.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <asp:Button CssClass="btn-primary" ID="Button1" runat="server" Text="RAPORLA" OnClick="Button1_Click" />
            <asp:Button CssClass="btn-primary" ID="Button2" runat="server" Text="Müşteri Servis" OnClick="Button2_Click" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource5" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="yonetici_id" HeaderText="yonetici_id" SortExpression="yonetici_id" />
                    <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                    <asp:BoundField DataField="soyadi" HeaderText="soyadi" SortExpression="soyadi" />
                    <asp:BoundField DataField="parola" HeaderText="parola" SortExpression="parola" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:cinema-otomasyonConnectionString %>" SelectCommand="SELECT * FROM [Yonetici]"></asp:SqlDataSource>
        </asp:Panel>
        <div>
            MÜŞTERİ DÜZENLE<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="musteri_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" HorizontalAlign="Justify">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="musteri_id" HeaderText="musteri_id" InsertVisible="False" ReadOnly="True" SortExpression="musteri_id" />
                    <asp:BoundField DataField="musteri_adi" HeaderText="musteri_adi" SortExpression="musteri_adi" />
                    <asp:BoundField DataField="musteri_soyadi" HeaderText="musteri_soyadi" SortExpression="musteri_soyadi" />
                    <asp:BoundField DataField="telefon_no" HeaderText="telefon_no" SortExpression="telefon_no" />
                    <asp:BoundField DataField="e_mail" HeaderText="e_mail" SortExpression="e_mail" />
                    <asp:BoundField DataField="porola" HeaderText="porola" SortExpression="porola" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <br />
            GÖSTERİ DÜZENLE<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="gosteri_id" DataSourceID="SqlDataSource2" HorizontalAlign="Left" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="salon_no" HeaderText="salon_no" SortExpression="salon_no" />
                    <asp:BoundField DataField="film_id" HeaderText="film_id" SortExpression="film_id" />
                    <asp:BoundField DataField="gosteri_zamani" HeaderText="gosteri_zamani" SortExpression="gosteri_zamani" />
                    <asp:BoundField DataField="gosteri_tarihi" HeaderText="gosteri_tarihi" SortExpression="gosteri_tarihi" />
                    <asp:BoundField DataField="gosteri_id" HeaderText="gosteri_id" InsertVisible="False" ReadOnly="True" SortExpression="gosteri_id" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="film_id" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="film_id" HeaderText="film_id" InsertVisible="False" ReadOnly="True" SortExpression="film_id" />
                    <asp:BoundField DataField="film_adi" HeaderText="film_adi" SortExpression="film_adi" />
                    <asp:BoundField DataField="IMDB" HeaderText="IMDB" SortExpression="IMDB" />
                    <asp:BoundField DataField="film_suresi" HeaderText="film_suresi" SortExpression="film_suresi" />
                    <asp:BoundField DataField="film_fiyati" HeaderText="film_fiyati" SortExpression="film_fiyati" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cinema-otomasyonConnectionString %>" DeleteCommand="DELETE FROM [Filmler] WHERE [film_id] = @original_film_id AND [film_adi] = @original_film_adi AND (([IMDB] = @original_IMDB) OR ([IMDB] IS NULL AND @original_IMDB IS NULL)) AND (([film_suresi] = @original_film_suresi) OR ([film_suresi] IS NULL AND @original_film_suresi IS NULL)) AND (([film_fiyati] = @original_film_fiyati) OR ([film_fiyati] IS NULL AND @original_film_fiyati IS NULL))" InsertCommand="INSERT INTO [Filmler] ([film_adi], [IMDB], [film_suresi], [film_fiyati]) VALUES (@film_adi, @IMDB, @film_suresi, @film_fiyati)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Filmler]" UpdateCommand="UPDATE [Filmler] SET [film_adi] = @film_adi, [IMDB] = @IMDB, [film_suresi] = @film_suresi, [film_fiyati] = @film_fiyati WHERE [film_id] = @original_film_id AND [film_adi] = @original_film_adi AND (([IMDB] = @original_IMDB) OR ([IMDB] IS NULL AND @original_IMDB IS NULL)) AND (([film_suresi] = @original_film_suresi) OR ([film_suresi] IS NULL AND @original_film_suresi IS NULL)) AND (([film_fiyati] = @original_film_fiyati) OR ([film_fiyati] IS NULL AND @original_film_fiyati IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_film_id" Type="Int32" />
                    <asp:Parameter Name="original_film_adi" Type="String" />
                    <asp:Parameter Name="original_IMDB" Type="Double" />
                    <asp:Parameter DbType="Time" Name="original_film_suresi" />
                    <asp:Parameter Name="original_film_fiyati" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="film_adi" Type="String" />
                    <asp:Parameter Name="IMDB" Type="Double" />
                    <asp:Parameter DbType="Time" Name="film_suresi" />
                    <asp:Parameter Name="film_fiyati" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="film_adi" Type="String" />
                    <asp:Parameter Name="IMDB" Type="Double" />
                    <asp:Parameter DbType="Time" Name="film_suresi" />
                    <asp:Parameter Name="film_fiyati" Type="Decimal" />
                    <asp:Parameter Name="original_film_id" Type="Int32" />
                    <asp:Parameter Name="original_film_adi" Type="String" />
                    <asp:Parameter Name="original_IMDB" Type="Double" />
                    <asp:Parameter DbType="Time" Name="original_film_suresi" />
                    <asp:Parameter Name="original_film_fiyati" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cinema-otomasyonConnectionString %>" DeleteCommand="DELETE FROM [gosteri] WHERE [gosteri_id] = @original_gosteri_id AND [salon_no] = @original_salon_no AND [film_id] = @original_film_id AND [gosteri_zamani] = @original_gosteri_zamani AND [gosteri_tarihi] = @original_gosteri_tarihi" InsertCommand="INSERT INTO [gosteri] ([salon_no], [film_id], [gosteri_zamani], [gosteri_tarihi]) VALUES (@salon_no, @film_id, @gosteri_zamani, @gosteri_tarihi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [gosteri] ORDER BY [salon_no]" UpdateCommand="UPDATE [gosteri] SET [salon_no] = @salon_no, [film_id] = @film_id, [gosteri_zamani] = @gosteri_zamani, [gosteri_tarihi] = @gosteri_tarihi WHERE [gosteri_id] = @original_gosteri_id AND [salon_no] = @original_salon_no AND [film_id] = @original_film_id AND [gosteri_zamani] = @original_gosteri_zamani AND [gosteri_tarihi] = @original_gosteri_tarihi">
                <DeleteParameters>
                    <asp:Parameter Name="original_gosteri_id" Type="Int32" />
                    <asp:Parameter Name="original_salon_no" Type="Int32" />
                    <asp:Parameter Name="original_film_id" Type="Int32" />
                    <asp:Parameter DbType="Time" Name="original_gosteri_zamani" />
                    <asp:Parameter DbType="Date" Name="original_gosteri_tarihi" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="salon_no" Type="Int32" />
                    <asp:Parameter Name="film_id" Type="Int32" />
                    <asp:Parameter DbType="Time" Name="gosteri_zamani" />
                    <asp:Parameter DbType="Date" Name="gosteri_tarihi" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="salon_no" Type="Int32" />
                    <asp:Parameter Name="film_id" Type="Int32" />
                    <asp:Parameter DbType="Time" Name="gosteri_zamani" />
                    <asp:Parameter DbType="Date" Name="gosteri_tarihi" />
                    <asp:Parameter Name="original_gosteri_id" Type="Int32" />
                    <asp:Parameter Name="original_salon_no" Type="Int32" />
                    <asp:Parameter Name="original_film_id" Type="Int32" />
                    <asp:Parameter DbType="Time" Name="original_gosteri_zamani" />
                    <asp:Parameter DbType="Date" Name="original_gosteri_tarihi" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cinema-otomasyonConnectionString %>" DeleteCommand="DELETE FROM [Musteri] WHERE [musteri_id] = @original_musteri_id AND [musteri_adi] = @original_musteri_adi AND [musteri_soyadi] = @original_musteri_soyadi AND [telefon_no] = @original_telefon_no AND [e_mail] = @original_e_mail AND [porola] = @original_porola" InsertCommand="INSERT INTO [Musteri] ([musteri_adi], [musteri_soyadi], [telefon_no], [e_mail], [porola]) VALUES (@musteri_adi, @musteri_soyadi, @telefon_no, @e_mail, @porola)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Musteri]" UpdateCommand="UPDATE [Musteri] SET [musteri_adi] = @musteri_adi, [musteri_soyadi] = @musteri_soyadi, [telefon_no] = @telefon_no, [e_mail] = @e_mail, [porola] = @porola WHERE [musteri_id] = @original_musteri_id AND [musteri_adi] = @original_musteri_adi AND [musteri_soyadi] = @original_musteri_soyadi AND [telefon_no] = @original_telefon_no AND [e_mail] = @original_e_mail AND [porola] = @original_porola">
                <DeleteParameters>
                    <asp:Parameter Name="original_musteri_id" Type="Int32" />
                    <asp:Parameter Name="original_musteri_adi" Type="String" />
                    <asp:Parameter Name="original_musteri_soyadi" Type="String" />
                    <asp:Parameter Name="original_telefon_no" Type="String" />
                    <asp:Parameter Name="original_e_mail" Type="String" />
                    <asp:Parameter Name="original_porola" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="musteri_adi" Type="String" />
                    <asp:Parameter Name="musteri_soyadi" Type="String" />
                    <asp:Parameter Name="telefon_no" Type="String" />
                    <asp:Parameter Name="e_mail" Type="String" />
                    <asp:Parameter Name="porola" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="musteri_adi" Type="String" />
                    <asp:Parameter Name="musteri_soyadi" Type="String" />
                    <asp:Parameter Name="telefon_no" Type="String" />
                    <asp:Parameter Name="e_mail" Type="String" />
                    <asp:Parameter Name="porola" Type="String" />
                    <asp:Parameter Name="original_musteri_id" Type="Int32" />
                    <asp:Parameter Name="original_musteri_adi" Type="String" />
                    <asp:Parameter Name="original_musteri_soyadi" Type="String" />
                    <asp:Parameter Name="original_telefon_no" Type="String" />
                    <asp:Parameter Name="original_e_mail" Type="String" />
                    <asp:Parameter Name="original_porola" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cinema-otomasyonConnectionString %>" DeleteCommand="DELETE FROM [Bilet] WHERE [bilet_id] = @original_bilet_id AND [koltuk_id] = @original_koltuk_id AND [gosteri_id] = @original_gosteri_id" InsertCommand="INSERT INTO [Bilet] ([koltuk_id], [gosteri_id]) VALUES (@koltuk_id, @gosteri_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [bilet_id], [koltuk_id], [gosteri_id] FROM [Bilet]" UpdateCommand="UPDATE [Bilet] SET [koltuk_id] = @koltuk_id, [gosteri_id] = @gosteri_id WHERE [bilet_id] = @original_bilet_id AND [koltuk_id] = @original_koltuk_id AND [gosteri_id] = @original_gosteri_id">
                <DeleteParameters>
                    <asp:Parameter Name="original_bilet_id" Type="Int32" />
                    <asp:Parameter Name="original_koltuk_id" Type="Int32" />
                    <asp:Parameter Name="original_gosteri_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="koltuk_id" Type="Int32" />
                    <asp:Parameter Name="gosteri_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="koltuk_id" Type="Int32" />
                    <asp:Parameter Name="gosteri_id" Type="Int32" />
                    <asp:Parameter Name="original_bilet_id" Type="Int32" />
                    <asp:Parameter Name="original_koltuk_id" Type="Int32" />
                    <asp:Parameter Name="original_gosteri_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
