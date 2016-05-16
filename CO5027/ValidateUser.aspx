<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ValidateUser.aspx.cs" Inherits="CO5027.ValidateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="stylesheet" runat="server">
    <link rel="stylesheet" href="CSS/StyleSheet.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 228px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightcontent" runat="server">
    <script type="text/javascript">
    function validateLength(oSrc, args){
        args.IsValid = (args.Value.length >= 6 && args.Value.length <= 25);
    }
</script>
    <div id="right_content">
        <div id="left_register">
            <h2>Would you like to register? Please fill in the form below!</h2>                               
<table border="0" cellpadding="10" cellspacing="0">    
    <tr>
        <td>
            Username
        </td>
        <td class="auto-style1"><asp:TextBox ID="txtUsername" runat="server" />
        </td>
        <td><asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                runat="server" ValidationGroup="one" /></td>
    </tr>
    <tr>
        <td>
            Password
        </td>
        <td class="auto-style1"><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /></td>
        <td><asp:CustomValidator id="customValidator" runat="server" 
    ControlToValidate = "txtPassword"
    ErrorMessage = "Password must be between 6 to 25 characters!"
            ForeColor="Red"
    ClientValidationFunction="validateLength"
            ValidationGroup="one" >
</asp:CustomValidator></td>
    </tr>
    <tr>
        <td>
            Confirm Password
        </td>
        <td class="auto-style1"><asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" /></td>
        <td><asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" /></td>
    </tr>
    <tr>
        <td>
            Email
        </td>
        <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server" /></td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" validationgroup="one"/>
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td class="auto-style1">
            <asp:Button Text="Submit" runat="server" OnClick="RegisterUser" validationgroup="one"/>
            <asp:TextBox ID="ErrorMessage" runat="server" />
        </td>
        <td>
        </td>
    </tr>
</table>

			
        </div>
       
        <div id="right_member">
            <h2>Have an account? Please login.</h2>
            <table id= "right_login" border="0" cellpadding="10" cellspacing="10">
            
                    <tr>
                    <td><asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">UserName:</asp:Label></td>
                    <td><asp:TextBox ID="UserName" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="two" >*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                    <td><asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label></td>
                    <td><asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" Tooltip="Password is required." ValidationGroup="two" >*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." class="Checkbox_Class"/></td>
                        <td><asp:Button Text="Login" runat="server" OnClick="Login_Button" ValidationGroup="two"/></td>
                    </tr>
                    <tr><td></td></tr>
     
                </table>
            
        </div>

    </div>
</asp:Content>
