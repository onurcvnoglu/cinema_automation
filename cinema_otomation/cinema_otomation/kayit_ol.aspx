<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit_ol.aspx.cs" Inherits="cinema_otomation.kayit_ol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color:#333;">
    <form id="form1" runat="server">
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
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Adı" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ErrorMessage="*Gereklidir" ForeColor="Red" ControlToValidate="txtUsername"
                                    runat="server" />
                            </td>
                        </tr>
                 <tr>
                            <td></td>
                            <td>
                                <asp:TextBox ID="txtUsersurname" runat="server" CssClass="form-control" placeholder="Soyadı" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ErrorMessage="*Gereklidir" ForeColor="Red" ControlToValidate="txtUsersurname"
                                    runat="server" />
                            </td>
                        </tr>
                        
                         <tr>
                            <td></td>
                            <td>
                                <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control" placeholder="Telefon No" />
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
                    <td >
                        <asp:CompareValidator ErrorMessage="Parola Eşleşmedi"  ForeColor="Red" ControlToCompare="txtPassword"
                            ControlToValidate="txtConfirmPassword" runat="server" />
                    </td> 
                            <td  >
                                <asp:RequiredFieldValidator style="margin-left:-123px;" ErrorMessage="*Gereklidir" ForeColor="Red" ControlToValidate="txtPassword"
                            runat="server" />
                            </td>
                </tr>
                        <tr>
                <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="KAYDOL" CssClass="btn btn-lg btn-primary btn-block" OnClick="Button1_Click" />
                    </td>
                    <td></td>
                </tr>
            </table>
          </div>
       </div>
    </form>
</body>
</html>
