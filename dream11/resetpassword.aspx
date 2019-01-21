<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resetpassword.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            font-size: large;
            margin-left: 29px;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            font-size: xx-large;
            color: #0099FF;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            color: #FF0000;
            font-size: large;
        }
        .auto-style6 {
            color: #FF3300;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <strong><span class="auto-style3">RESET MY PASSWORD</span><br />
            <br />
            <span class="auto-style2">EMAIL ID:</span></strong>
            <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
            <strong>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" CssClass="auto-style5" ErrorMessage="Enter the Email Id"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="auto-style6" ErrorMessage="Enter valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </strong>
            <br />
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Reset Password" Width="200px" />
            <br />
            </strong>
        </div>
    </form>
</body>
</html>
