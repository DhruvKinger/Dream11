<%@ Page Language="C#" AutoEventWireup="true" CodeFile="points.aspx.cs" Inherits="ADMIN_point" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #FEFFFF;
        }
        .auto-style3 {
            font-weight: bold;
            color: #FFFFFF;
            font-size: large;
            background-color: #000000;
        }
        .auto-style4 {
            color: #000000;
            font-size: xx-large;
        }
        .newStyle1 {
        }
        .newStyle2 {
            border: medium dotted #FFFFFF;
        }
        .auto-style5 {
            border: medium dotted #FFFFFF;
            font-size: xx-large;
        }
        .auto-style6 {
            font-size: large;
        }
    </style>
    <script type="text/javascript" src="../jquery.js"></script>
</head>
    <script>
        $(function () {
       
       console.log("Errors");
        $("#Button1").click(function () {
            var x = $("#TextBox1").val();
            var y = $("#D2").val();
            if (x == "" ||y=="")
        {
            alert("Enter the details first ");
        }
        else {
            alert("Saved Sucessfully");
        }
        });
        });

    </script>
<body style="background-image:url(track.jpeg);width:100%;height:100%; background-repeat:no-repeat; background-size:cover;">
    <form id="form1" runat="server">
        <div>
            <strong>
            <br class="auto-style4" />
            <span class="auto-style5">POINTS UPDATER</span><span class="auto-style2"><br />
            <br />
            <br />
            <br />
            <span class="auto-style6">Choose Category:&nbsp; </span>&nbsp; <asp:DropDownList ID="D1" runat="server" Height="25px" Width="168px" AutoPostBack="True">
                <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <span class="auto-style6">Choose Player:</span></span><span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp; 
            <asp:DropDownList ID="D2" runat="server" Height="25px" Width="168px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
            </asp:DropDownList>
            <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            <span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Points: </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="T1" runat="server"></asp:TextBox>
            </span> 
            <br class="auto-style2" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="UPDATE" OnClick="Button1_Click" />
            </strong>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:ControlParameter ControlID="D1" Name="category" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
