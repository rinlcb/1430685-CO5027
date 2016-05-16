<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminMain.aspx.cs" Inherits="CO5027.Admin.AddNewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="stylesheet" runat="server">
    <link rel="stylesheet" href="../CSS/AdminStyleSheet.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/AdminAddProduct.aspx">Add a new game product</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="productID" DataSourceID="SqlDataSource1" AllowSorting="True" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="productID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="productID" />
            <asp:BoundField DataField="productName" HeaderText="Game Title" SortExpression="productName" />
            <asp:BoundField DataField="productPlatform" HeaderText="Platform" SortExpression="productPlatform" />
            <asp:BoundField DataField="productPrice" HeaderText="Price" SortExpression="productPrice" />
            <asp:BoundField DataField="productDateRegistered" HeaderText="Date Registered" SortExpression="productDateRegistered" />
            <asp:BoundField DataField="productAvailability" HeaderText="Availability" SortExpression="productAvailability" />
            <asp:BoundField DataField="productDescription" HeaderText="Description" SortExpression="productDescription" />
            <asp:BoundField DataField="productDateReleased" HeaderText="Date Released" SortExpression="productDateReleased" />
            <asp:BoundField DataField="productType" HeaderText="Edition" SortExpression="productType" />
            <asp:BoundField DataField="productPhoto" HeaderText="Photo Location" SortExpression="productPhoto" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1430685_CO5027_2ConnectionString %>" DeleteCommand="DELETE FROM [GameProduct] WHERE [productID] = @original_productID AND [productName] = @original_productName AND [productPlatform] = @original_productPlatform AND [productPrice] = @original_productPrice AND [productDateRegistered] = @original_productDateRegistered AND [productAvailability] = @original_productAvailability AND (([productDescription] = @original_productDescription) OR ([productDescription] IS NULL AND @original_productDescription IS NULL)) AND [productDateReleased] = @original_productDateReleased AND [productType] = @original_productType AND (([productPhoto] = @original_productPhoto) OR ([productPhoto] IS NULL AND @original_productPhoto IS NULL))" InsertCommand="INSERT INTO [GameProduct] ([productName], [productPlatform], [productPrice], [productDateRegistered], [productAvailability], [productDescription], [productDateReleased], [productType], [productPhoto]) VALUES (@productName, @productPlatform, @productPrice, @productDateRegistered, @productAvailability, @productDescription, @productDateReleased, @productType, @productPhoto)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [GameProduct]" UpdateCommand="UPDATE [GameProduct] SET [productName] = @productName, [productPlatform] = @productPlatform, [productPrice] = @productPrice, [productDateRegistered] = @productDateRegistered, [productAvailability] = @productAvailability, [productDescription] = @productDescription, [productDateReleased] = @productDateReleased, [productType] = @productType, [productPhoto] = @productPhoto WHERE [productID] = @original_productID AND [productName] = @original_productName AND [productPlatform] = @original_productPlatform AND [productPrice] = @original_productPrice AND [productDateRegistered] = @original_productDateRegistered AND [productAvailability] = @original_productAvailability AND (([productDescription] = @original_productDescription) OR ([productDescription] IS NULL AND @original_productDescription IS NULL)) AND [productDateReleased] = @original_productDateReleased AND [productType] = @original_productType AND (([productPhoto] = @original_productPhoto) OR ([productPhoto] IS NULL AND @original_productPhoto IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_productID" Type="Int32" />
            <asp:Parameter Name="original_productName" Type="String" />
            <asp:Parameter Name="original_productPlatform" Type="String" />
            <asp:Parameter Name="original_productPrice" Type="String" />
            <asp:Parameter Name="original_productDateRegistered" Type="DateTime" />
            <asp:Parameter Name="original_productAvailability" Type="Byte" />
            <asp:Parameter Name="original_productDescription" Type="String" />
            <asp:Parameter DbType="Date" Name="original_productDateReleased" />
            <asp:Parameter Name="original_productType" Type="String" />
            <asp:Parameter Name="original_productPhoto" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="productPlatform" Type="String" />
            <asp:Parameter Name="productPrice" Type="String" />
            <asp:Parameter Name="productDateRegistered" Type="DateTime" />
            <asp:Parameter Name="productAvailability" Type="Byte" />
            <asp:Parameter Name="productDescription" Type="String" />
            <asp:Parameter DbType="Date" Name="productDateReleased" />
            <asp:Parameter Name="productType" Type="String" />
            <asp:Parameter Name="productPhoto" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="productPlatform" Type="String" />
            <asp:Parameter Name="productPrice" Type="String" />
            <asp:Parameter Name="productDateRegistered" Type="DateTime" />
            <asp:Parameter Name="productAvailability" Type="Byte" />
            <asp:Parameter Name="productDescription" Type="String" />
            <asp:Parameter DbType="Date" Name="productDateReleased" />
            <asp:Parameter Name="productType" Type="String" />
            <asp:Parameter Name="productPhoto" Type="String" />
            <asp:Parameter Name="original_productID" Type="Int32" />
            <asp:Parameter Name="original_productName" Type="String" />
            <asp:Parameter Name="original_productPlatform" Type="String" />
            <asp:Parameter Name="original_productPrice" Type="String" />
            <asp:Parameter Name="original_productDateRegistered" Type="DateTime" />
            <asp:Parameter Name="original_productAvailability" Type="Byte" />
            <asp:Parameter Name="original_productDescription" Type="String" />
            <asp:Parameter DbType="Date" Name="original_productDateReleased" />
            <asp:Parameter Name="original_productType" Type="String" />
            <asp:Parameter Name="original_productPhoto" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/default.aspx">Go back to Homepage</asp:LinkButton>
</asp:Content>

