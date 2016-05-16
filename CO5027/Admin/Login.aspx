<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CO5027.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="stylesheet" href="../CSS/AdminStyleSheet.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="admin_banner">
        <img src="../Image/bannericon.png" alt="shopbanner" />
            </div>
        <div id="admin_welcome">
            <h2>Welcome! Please enter the admin login and password to continue.</h2>
        </div>
    <table id="admin_login">
       <tr>
           <td>LoginID:</td>
           <td><asp:TextBox ID="txtLoginId" runat="server"></asp:TextBox></td>
       </tr>
        <tr>
            <td>Password:</td>
            <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblAlert" runat="server" Font-names="Aharoni" ForeColor="red"></asp:Label></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
