<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fixtures.aspx.cs" Inherits="ADMIN_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            font-size: large;
        }
        .newStyle1 {
            border-style: dotted;
        }
        .auto-style4 {
            border-style: dotted;
            color: #FFFFFF;
        }
        .auto-style5 {
            font-weight: bold;
            color: #FFFFFF;
            font-size: large;
            background-color: #000000;
        }
    </style>
    <script>
    $(function () {
       
       console.log("Errors");
        $("#Button1").click(function () {
            var x = $("#D1").val();
            var Z= $("#D2").val();
             var C = $("#D3").val();
            var Y = $("#TextBox4").val();
        if (x ==""||Y=="")
        {
            alert("Enter the above Details First ");
        }
        else {
            alert("Saved Sucessfully");
        }
        });
    });
    </script>
</head>
<body style="background-image:url(fix.jpg);width:100%;height:100%; background-repeat:no-repeat; background-size:cover;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style2"><span class="auto-style4">FIXTURES</span><br />
            </span>
            <br />
            <span class="auto-style3">Enter team1:&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="D1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="tname" DataValueField="tname" Width="168px">
            </asp:DropDownList>
            <br />
            <br />
            <span class="auto-style3">Enter team 2:&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="D2" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="tname" DataValueField="tname" Width="168px">
            </asp:DropDownList>
            <br />
            <br />
            <span class="auto-style3">Enter Venue:&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="D3" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="venue" DataValueField="venue" Width="168px">
            </asp:DropDownList>
            <br />
            <br />
            <span class="auto-style3">Enter Date&amp;Time:</span>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="SAVE" />
            &nbsp;
            <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Team1" SortExpression="team1">
                        <EditItemTemplate>
                            <asp:DropDownList ID="Dr1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="tname" DataValueField="tname">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("team1") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Team2" SortExpression="team2">
                        <EditItemTemplate>
                            <asp:DropDownList ID="Dr2" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="tname" DataValueField="tname">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("team2") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Venue" SortExpression="venue">
                        <EditItemTemplate>
                            <asp:DropDownList ID="Dr3" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="venue" DataValueField="venue">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("venue") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="date" HeaderText="Date &amp; Time" SortExpression="date" />
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
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Disp_Rec" TypeName="dream11.mainteam"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="Disp_Rec" TypeName="dream11.mainvdate"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="Disp_Rec" TypeName="dream11.mainfixtures"></asp:ObjectDataSource>
            </strong>
        </div>
    </form>
</body>
</html>
