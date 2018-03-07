<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="musteri_hesabi.aspx.cs" Inherits="cinema_otomation.musteri_hesabi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ortaAlan" runat="server">
    <asp:Panel ID="Panel1" CssClass="container-fluid" runat="server" Wrap="False">
        <asp:GridView ID="GridView1" CssClass="container-fluid" runat="server" AutoGenerateColumns="False" DataKeyNames="musteri_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="332px" Width="745px" OnRowDeleted="GridView1_RowDeleted">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="musteri_adi" HeaderText="ADINIZ" SortExpression="musteri_adi" />
            <asp:BoundField DataField="musteri_id" HeaderText="ID NUMARANIZ" InsertVisible="False" ReadOnly="True" SortExpression="musteri_id" />
            <asp:BoundField DataField="musteri_soyadi" HeaderText="SOYADINIZ" SortExpression="musteri_soyadi" />
            <asp:BoundField DataField="telefon_no" HeaderText="TELEFON NO" SortExpression="telefon_no" />
            <asp:BoundField DataField="e_mail" HeaderText="E-POSTA" SortExpression="e_mail" />
            <asp:BoundField DataField="porola" HeaderText="PAROLA" SortExpression="porola" Visible="False" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cinema-otomasyonConnectionString %>" DeleteCommand="DELETE FROM [Musteri] WHERE [musteri_id] = @original_musteri_id AND [musteri_adi] = @original_musteri_adi AND [musteri_soyadi] = @original_musteri_soyadi AND [telefon_no] = @original_telefon_no AND [e_mail] = @original_e_mail AND [porola] = @original_porola" InsertCommand="INSERT INTO [Musteri] ([musteri_adi], [musteri_soyadi], [telefon_no], [e_mail], [porola]) VALUES (@musteri_adi, @musteri_soyadi, @telefon_no, @e_mail, @porola)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [musteri_adi], [musteri_id], [musteri_soyadi], [telefon_no], [e_mail], [porola] FROM [Musteri] WHERE ([musteri_id] = @musteri_id)" UpdateCommand="UPDATE [Musteri] SET [musteri_adi] = @musteri_adi, [musteri_soyadi] = @musteri_soyadi, [telefon_no] = @telefon_no, [e_mail] = @e_mail, [porola] = @porola WHERE [musteri_id] = @original_musteri_id AND [musteri_adi] = @original_musteri_adi AND [musteri_soyadi] = @original_musteri_soyadi AND [telefon_no] = @original_telefon_no AND [e_mail] = @original_e_mail AND [porola] = @original_porola">
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
        <SelectParameters>
            <asp:SessionParameter Name="musteri_id" SessionField="musteri_id" Type="Int32" />
        </SelectParameters>
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
    </asp:Panel>
</asp:Content>
