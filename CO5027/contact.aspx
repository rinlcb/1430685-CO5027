<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CO5027.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="stylesheet" runat="server">
    <link rel="stylesheet" href="CSS/StyleSheet.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightcontent" runat="server">
    <div id="right_content">
                <div class="contact_form">
                    <form name="customer_form">
                    <div class="customer_box">
                    <h3>Customer information</h3>
                    </div>
                    <div class="form_box">
                        <dl>
                            <dt class="form_left">
                                <label for="fname">
                                    Name
                                </label>
                            </dt>
                            <dd class="form_right">
                                <input type="text" class="inputs" placeholder="Full Name" id="yourName" /> 
                            </dd>
                            <br class="clearfloat" />
                            <dt class="form_left">
                                <label for="femail">
                                    E-mail Address
                                </label>
                            </dt>
                            <dd class="form_right">
                                <input type="text" class="inputs"  placeholder="E-mail Address" id="yourEmail" /> 
                            </dd>
                        </dl>
                    </div>
                        <div class="customer_box">
                            <h3>Message</h3>
                        </div>
                        <div class="form_box">
                            <dt class="form_left">
                                <label for="inquiry">
                                    Type of inquiry
                                </label>
                            </dt>
                            <dd class="form_right">
                                <select id="yourInquiry" name="quest_ptn">
                                    <option value=""></option>
                                    <option value="1">Order/Payment</option>
                                    <option value="2">Product</option>
                                    <option value="3">Other</option>
                                </select>
                            </dd>
                            <br class="clearfloat" />
                            <div class="txtbox">
                                <p>
                                    <label for="inquiry_box">
                                        Up to 1000 characters. English only.
                                    </label>
                                </p>
                                <form id="form1" runat="server">
                                <div>
                                      <div id="sendbutton">
                                        <asp:Label ID="lblMessage" runat="server" Text="" AssociatedControlID="txtMessageBody"></asp:Label>
                                        <asp:TextBox ID="txtMessageBody" runat="server" TextMode="MultiLine"></asp:TextBox>
                                      </div>
                                </div>
                                <div>
                                        <asp:Button ID="Button1" runat="server" Text="Send Mail" OnClick="btnSend_Click" />
                                </div>
                                </form>
                                <br class="clearfloat" />
                            </div>
                        </div>

                            
                        </div>
                    </form>
                
                    <div class="map_location">
                        <h2>We are located here!</h2>
                        <object width ="640" height ="480" data="https://www.google.com/maps/d/embed?mid=zA_yBnr_zTLE.kuzBgQPktgvA"></object>
                        <p class="address">Address:  G.24-G.25 Times Square Shopping Centre, Bandar Seri Begawan BB2713</p>
                    </div>
                 
                </div>
</asp:Content>
