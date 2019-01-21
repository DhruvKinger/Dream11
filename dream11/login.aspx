<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            font-size: large;
            font-weight: bold;
        }
        h3{
            text-align:center;
            color:black;
        }
        .auto-style7 {
            color: #000000;
        }
        .auto-style12 {
            color: #000000;
            font-size: large;
        }
        .auto-style13 {
            color: #FFFFFF;
        }
        .auto-style14 {
            color: #FFFFFF;
            font-size: medium;
        }
    </style>
        <script type="text/javascript" src="jquery.js"></script>
</head>
<body style="background-image:url(aa.jpg);height:100%;width:100%;background-repeat:no-repeat; background-size:cover;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style4">LOGIN HERE</span><span class="auto-style2"><br />
            </span>
            <br class="auto-style2" />
            <span class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USERNAME</span></strong>&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="180px" style= Height="17px"></asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style13"><strong>PASSWORD </strong></span>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="180px" Height="17px" TextMode="Password"></asp:TextBox>
            &nbsp;
            <br />
            <br />
            
            <strong>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="LOGIN" OnClick="Button1_Click" />
            <br /><br />
            &nbsp; </strong>
            <a href="register.aspx"><span class="auto-style12"><strong>Don&#39;t have an account</strong></span></a>
            <br />
            <br class="auto-style7" />
            &nbsp;&nbsp;&nbsp;
            <a href="resetpassword.aspx"><strong><span class="auto-style12">Lost Your password</span></strong></a><span class="auto-style7"></strong></span>
        </div>
    </form>
</body>
    <script>
        $(function () {
            $("#check").change(function () {
                var x = $("#TextBox2").attr('type');
                if (x ="Password") {
                    x = "Text";
                }
                else if (x = "Text") {
                    x = "Password";
                }
                $("#TextBox2").attr("x", x);
            });
        });
    </script>
</html>
