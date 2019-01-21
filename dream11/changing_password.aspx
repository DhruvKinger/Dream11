<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changing_password.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style3 {
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body style="background-image:url(dale.jpg);width:100%;height:100%; background-repeat:no-repeat; background-size:cover;">
    <form id="form1" runat="server">
        <div class="auto-style5">
            <strong><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CHANGE </span></strong>&nbsp;<strong><span class="auto-style4">PASSWORD </span></strong>&nbsp;&nbsp;<br />
            &nbsp;<strong><br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text=""></asp:Label>
            </strong>&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; OLD PASSWORD:&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NEW PASSWORD:&nbsp; <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            CONFIRM PASSWORD: <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <strong>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="UPDATE" position="fixed"/>
            </strong>
        </div>
    </form>
</body>
</html>
