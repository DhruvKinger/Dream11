<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vdate.aspx.cs" Inherits="ADMIN_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #0099FF;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            color: #0099FF;
        }
        .auto-style6 {
            font-size: xx-large;
            color: #0000FF;
        }
        .auto-style8 {
            color: #0099FF;
            font-weight: bold;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            color: #3399FF;
            font-size: large;
        }
        .auto-style12 {
            color: #0066FF;
        }
        .auto-style13 {
            color: #0066FF;
            font-size: large;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
            background-color: #6666FF;
        }
        .auto-style15 {
            margin-left: 222px;
        }
    </style>
    <script type="text/javascript" src="../jquery.js"></script>

</head>
    
<script>
    $(function () {
       
       console.log("Errors");
        $("#Button1").click(function () {
            var x = $("#TextBox1").val();
            var Y = $("#TextBox2").val();
        if (x ==""||Y=="")
        {
            alert("Enter the Venue and Date First ");
        }
        else {
            alert("Saved Sucessfully");
        }
        });
    });
    </script>
<body style="background-image:url(venue.jpg);width:1200px;height:670px;  background-repeat:no-repeat; background-size:cover; ">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <span class="auto-style2"><strong>
            <br />
            </strong></span><span class="auto-style6"><strong>VENUES &amp; DATES</strong></span><strong><span class="auto-style1"><br class="auto-style5" />
            <br class="auto-style5" />
            </span><span class="auto-style11">
            <br />
            </span><span class="auto-style13">
            E</span><span class="auto-style12"><span class="auto-style10">nter Venues</span></span><span class="auto-style10"><span class="auto-style5">:&nbsp; </span></span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8"></asp:TextBox>
            <br />
            <br />
            </strong>
        </div>
        <div class="auto-style3">
            <strong><span class="auto-style10"><span class="auto-style5">&nbsp;</span></span><br />
&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="SAVE" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" CssClass="auto-style15" OnRowUpdating="GridView1_RowUpdating" Width="821px" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="ID" SortExpression="id">
                        <EditItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="venue" HeaderText="Venue" SortExpression="venue" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Disp_Rec" TypeName="dream11.mainvdate"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
