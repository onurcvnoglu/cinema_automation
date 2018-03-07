<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="cinema_otomation.kayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ortaAlan" runat="server">
    <div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4" style="margin-top:100px;">
    <table border="0" cellpadding="3">
    <tr>
        <th></th>
        <th><font color="#1569C7"><h3><strong>KAYIT OL</strong></h3></font></th>
        <th></th>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="*Gereklidir" ForeColor="Red" ControlToValidate="txtUsername"
                runat="server" />
        </td>
    </tr>
        <tr>
            <td></td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="E-Posta" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="*Gereklidir" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Geçersiz e-posta adresi" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Parola" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="*Gereklidir" ForeColor="Red" ControlToValidate="txtPassword"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Tekrar Parola" />
        </td>
        <td>
            <asp:CompareValidator ErrorMessage="Parola Eşleşmedi" ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="KAYDOL" CssClass="btn btn-lg btn-primary btn-block" />
        </td>
        <td>
        </td>
    </tr>
</table>
        </div>
        </div>
</asp:Content>
