<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="CO5027.UploadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="imageFileUploadControl" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    
        <br />
        <asp:Image ID="CurrentImage" runat="server" />
    
    </div>
        <asp:DataList ID="Test" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table style="border: 1px solid #ff6a00; background-color: #ffd800">
                    <tr>
                        <td style="width:200px">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("productPhoto") %>' />
                        </td>
                        <td style="width:400px">
                            <table>
                         <tr>   
                             <td>
                <b>Game Title:</b>
                                 </td>
                             <td>
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />
                                 </td>
                
                             </tr>
                            <tr>
                                <td>
                <b>Platform:</b>
                                    </td>
                                <td>
                <asp:Label ID="productPlatformLabel" runat="server" Text='<%# Eval("productPlatform") %>' />
                </td>
                                </tr>
                            <tr>
                                <td>
                <b>Price:</b>
                                    </td>
                                <td>
                <asp:Label ID="productPriceLabel" runat="server" Text='<%# Eval("productPrice") %>' />
                </td>
                                </tr>
                            <tr>
                                <td>
                <b>Available Stock:</b>
                <asp:Label ID="productAvailabilityLabel" runat="server" Text='<%# Eval("productAvailability") %>' />
                </td>
                                </tr>
                            <tr>
                                <td>
                <b>Description:</b>
                                    </td>
                                <td>
                <asp:Label ID="productDescriptionLabel" runat="server" Text='<%# Eval("productDescription") %>' />
                </td>
                                </tr>
                            <tr>
                                <td>
                <b>Date of Released:</b>
                <asp:Label ID="productDateReleasedLabel" runat="server" Text='<%# Eval("productDateReleased") %>' />
                </td>
                                </tr>
                            <tr>
                                <td>
                <b>Edition:</b>
                                    </td>
                                <td>
                <asp:Label ID="productTypeLabel" runat="server" Text='<%# Eval("productType") %>' />
                </td>
                                </tr>
                </table>
                            </td>
                        </tr>
                    </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1430685_CO5027_2ConnectionString %>" SelectCommand="SELECT [productName], [productPlatform], [productPrice], [productAvailability], [productDescription], [productDateReleased], [productType], [productPhoto] FROM [GameProduct]"></asp:SqlDataSource>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" GridLines="None" PageSize="3" ShowHeader="False">
            <Columns>
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <table style="border: 1px solid #ff6a00; background-color: #ffd800">
                    <tr>
                        <td style="width:200px">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("productPhoto") %>' />
                        </td>
                        <td style="width:400px">
                            <table>
                         <tr>   
                             <td>
                <b>Game Title:</b>
                                 </td>
                             <td>
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />
                                 </td>
                
                             </tr>
                            <tr>
                                <td>
                <b>Platform:</b>
                                    </td>
                                <td>
                <asp:Label ID="productPlatformLabel" runat="server" Text='<%# Eval("productPlatform") %>' />
                </td>
                                </tr>
                            <tr>
                                <td>
                <b>Price:</b>
                                    </td>
                                <td>
                <asp:Label ID="productPriceLabel" runat="server" Text='<%# Eval("productPrice") %>' />
                </td>
                                </tr>
                            <tr>
                                <td>
                <b>Available Stock:</b>
                <asp:Label ID="productAvailabilityLabel" runat="server" Text='<%# Eval("productAvailability") %>' />
                </td>
                                </tr>
                            <tr>
                                <td>
                <b>Description:</b>
                                    </td>
                                <td>
                <asp:Label ID="productDescriptionLabel" runat="server" Text='<%# Eval("productDescription") %>' />
                </td>
                                </tr>
                            <tr>
                                <td>
                <b>Date of Released:</b>
                <asp:Label ID="productDateReleasedLabel" runat="server" Text='<%# Eval("productDateReleased") %>' />
                </td>
                                </tr>
                            <tr>
                                <td>
                <b>Edition:</b>
                                    </td>
                                <td>
                <asp:Label ID="productTypeLabel" runat="server" Text='<%# Eval("productType") %>' />
                </td>
                                </tr>
                </table>
                            </td>
                        </tr>
                    </table>
</ItemTemplate>
                    </asp:TemplateField>
            </Columns>
        </asp:GridView>
        


    </form>
</body>
</html>
