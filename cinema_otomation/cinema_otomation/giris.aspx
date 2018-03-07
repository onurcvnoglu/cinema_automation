<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="cinema_otomation.giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ortaAlan" runat="server">
    <div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4" style="margin-top:100px;">
        <h3><strong><font color="#1569C7">GİRİŞ YAP</font></strong></h3><br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="E-Posta" autofocus=""></asp:TextBox><br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Parola" autofocus="" TextMode="Password"></asp:TextBox><br />
        <asp:CheckBox ID="CheckBox1" runat="server" /> <font color="#fff">Beni Hatırla</font> <br />
        <asp:Button CssClass="btn btn-lg btn-primary btn-block" ID="Button1" runat="server" Text="Giriş Yap" /><br />
        <asp:LinkButton CssClass="col-lg-1 col-lg-auto" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Üye Değilseniz Hemen Kaydolun</asp:LinkButton>
    </div>
    <div class="col-md-4"></div>
    </div>
</asp:Content>
