<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="odeme_sistemi.aspx.cs" Inherits="cinema_otomation.odeme_sistemi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="margin-top:100px;">
                <h3><strong><font color="#1569C7">ÖDEME SİSTEMİ</font></strong></h3><br />
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Kart üzerindeki Adınız" autofocus=""></asp:TextBox><br />
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Kart üzerindeki Soyadınız" autofocus=""></asp:TextBox><br />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Kredi Kartı Numarası" autofocus="" TextMode="Number"></asp:TextBox><br />
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="CVV Kodu" autofocus="" TextMode="Password" MaxLength="3"></asp:TextBox><br />
                <asp:Button CssClass="btn btn-lg btn-primary btn-block" ID="Button1" runat="server" Text="Satışı Tamamla" OnClick="Button1_Click" /><br />
            </div>
            <div class="col-md-4"></div>
    </div>
    </form>
</body>
</html>
