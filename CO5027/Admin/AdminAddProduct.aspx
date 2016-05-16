<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminAddProduct.aspx.cs" Inherits="CO5027.Admin.AdminAddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="stylesheet" runat="server">
    <link rel="stylesheet" href="../CSS/AdminStyleSheet.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="gridview_product">
        <tr>
            <td>
        Game Title:</td><td><asp:TextBox ID="txtGame" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td>
        Platform:</td><td><asp:DropDownList ID="ddlPlatform" runat="server" DataSourceID="SqlDataSource1" DataTextField="productPlatformName" DataValueField="productPlatform">
        </asp:DropDownList></td>
        <td><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1430685_CO5027_2ConnectionString %>" SelectCommand="SELECT * FROM [GamePlatform]"></asp:SqlDataSource>
                </td>
            </tr>
        <tr>
            <td>
        Price:</td><td><asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td>
        Date registered:</td><td><asp:TextBox ID="txtDateReg" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td>
        Availability:</td><td><asp:TextBox ID="txtAvail" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td>
        Description:</td><td>
        <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td>
        Date released:</td><td><asp:TextBox ID="txtDateRel" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td>
        Edition:</td><td><asp:TextBox ID="txtEdition" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Please choose an image."></asp:Label>
                </td>
            <td>
        <asp:FileUpload ID="imageFileUploadControl" runat="server" /></td>
            </tr>
        <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/AdminMain.aspx">Cancel</asp:HyperLink>
                </td>
            <td>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" style="height: 29px" Text="Submit" />
                </td>
            <tr>
                <td></td>
                <td><asp:Label ID="lblResult" runat="server"></asp:Label></td>
            </tr>

                
            </tr>
        </table>
</asp:Content>
