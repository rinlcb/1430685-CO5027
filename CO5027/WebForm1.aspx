<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CO5027.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellSpacing="-1" DataKeyNames="Id" DataSourceID="user_db_1430685_CO5027" GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                <asp:CheckBoxField DataField="ExDirectory" HeaderText="ExDirectory" SortExpression="ExDirectory" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" Text="Set Image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="user_db_1430685_CO5027" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1430685_CO5027_2ConnectionString %>" DeleteCommand="DELETE FROM [PhoneBookDataSource] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Number] = @original_Number AND [ExDirectory] = @original_ExDirectory" InsertCommand="INSERT INTO [PhoneBookDataSource] ([Name], [Number], [ExDirectory]) VALUES (@Name, @Number, @ExDirectory)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PhoneBookDataSource]" UpdateCommand="UPDATE [PhoneBookDataSource] SET [Name] = @Name, [Number] = @Number, [ExDirectory] = @ExDirectory WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Number] = @original_Number AND [ExDirectory] = @original_ExDirectory">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Number" Type="String" />
                <asp:Parameter Name="original_ExDirectory" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Number" Type="String" />
                <asp:Parameter Name="ExDirectory" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Number" Type="String" />
                <asp:Parameter Name="ExDirectory" Type="Boolean" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Number" Type="String" />
                <asp:Parameter Name="original_ExDirectory" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
