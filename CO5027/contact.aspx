<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CO5027.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="stylesheet" runat="server">
    <link rel="stylesheet" href="CSS/StyleSheet.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightcontent" runat="server">
    <div id="right_content">
        <h2>Contact Us</h2>
        <p class="contacttext">Please don't hesitate to contact us if you have any questions, comments or messages. We'd love to hear from you! :)</p>
        <div id="contact-info">
            <h3>Contact information</h3>
            <dl>
                <dt class="fleft">
                    <label for="ftel">Telephone</label>
                </dt>
                <dd class="fright">
                    <label for="ftel2">+673 1234567</label></dd>
                <dt class="fleft">
                    <label for="femail">Email</label>
                </dt>
                <dd class="fright">
                    <label for="femail2">Gamevolution3@gmail.com</label></dd>
                <dt class="fleft">
                    <label for="faddress">Address</label>
                </dt>
                <dd class="fright">
                    <label for="faddress2">G.24-25<br />Times Square Shopping Centre<br />Bandar Seri Begawan<br />BB2713</label>
                </dd>
                <dt class="fleft">
                    <label for="ftwitter">Follow Us!</label>
                </dt>
                <dd class="fright">
                    <label for="ftwiiter2"><a href="#">Twitter</a></label>
                </dd>
            </dl>
        </div>
                <div id="contact-area">
			
			<form method="post" action="">
				<label for="Name">Name:</label>
				<input type="text" name="Name" id="Name" placeholder="Enter your name" required />
				
				<label for="City">Subject:</label>
				<input type="text" name="Subject" id="Subject" placeholder="Enter your subject" required/>
	
				<label for="Email">Email:</label>
				<input type="email" name="Email" id="Email" placeholder="Enter your valid email address" required />
				
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
			</form>
                    
			
			<div style="clear: both;"></div>
		
		</div>
                
                    <div class="map_location">
                        <h2>We are located here!</h2>
                        <object width ="640" height ="480" data="https://www.google.com/maps/d/embed?mid=zA_yBnr_zTLE.kuzBgQPktgvA"></object>
                    </div>
                 
                </div>
</asp:Content>
