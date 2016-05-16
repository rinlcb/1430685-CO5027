<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CO5027._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="stylesheet" runat="server">
    <link rel="stylesheet" href="CSS/StyleSheet.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightcontent" runat="server">
    <div id="right_content">
                <div class="game_banner">
                        
                </div>
                <div class="featured_box">
                    <table id="searchtable">
                        
                    <tr>
                        <td>
                        <h3>Featured Item</h3>
                            </td>
                        <td>
                <asp:TextBox ID="SearchText" runat="server"></asp:TextBox></td><td><asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" /></td>
                    </tr>
                    </table>
                </div>
                <div id="products">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1430685_CO5027_2ConnectionString %>" SelectCommand="SELECT [productName], [productPlatform], [productPrice], [productAvailability], [productDateReleased], [productType], [productPhoto], [productID] FROM [GameProduct]">
                    <FilterParameters>
            <asp:ControlParameter Name="productPlatform" ControlID="SearchText" PropertyName="Text" />
        </FilterParameters>
                </asp:SqlDataSource>


        <asp:GridView ID="GridView1" runat="server" EmptyDataText="No product results found." AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" GridLines="None" PageSize="3" ShowHeader="False">
            <Columns>
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <table style="border: 1px solid #ff6a00; background-color: white">
                    <tr>
                        <td style="width:200px; height: 250px;">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("productPhoto") %>' />
                        </td>
                        <td style="width:700px; height: 250px;">
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
                <b>Date of Released:</b>
                <asp:Label ID="productDateReleasedLabel" runat="server" Text='<%# Eval("productDateReleased", "{0:dd/MM/yyyy}") %>' />
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
                <asp:HyperLinkField DataNavigateUrlFields="productID" DataNavigateUrlFormatString="ViewGame.aspx?productID={0}" Text="View Product" />
            </Columns>
        </asp:GridView>
                </div>
            </div>
</asp:Content>
