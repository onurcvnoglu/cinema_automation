<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanici_giris.aspx.cs" Inherits="cinema_otomation.kullani_olustur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color:#333; ">
    <form id="form1" runat="server">
    <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="margin-top:100px;">
                <h3><strong><font color="#1569C7">GİRİŞ YAP</font></strong></h3><br />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="E-Posta" autofocus=""></asp:TextBox><br />
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Parola" autofocus="" TextMode="Password"></asp:TextBox><br />
                <asp:CheckBox ID="CheckBox1" runat="server" /> <font color="#fff">Beni Hatırla</font> <br />
                <asp:Button CssClass="btn btn-lg btn-primary btn-block" ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" /><br />
                <asp:LinkButton CssClass="col-lg-1 col-lg-auto" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Üye Değilseniz Hemen Kaydolun</asp:LinkButton>
            </div>
            <div class="col-md-4"></div>
    </div>
    </form>
</body>
</html>
