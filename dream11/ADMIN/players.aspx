<%@ Page Language="C#" AutoEventWireup="true" CodeFile="players.aspx.cs" Inherits="ADMIN_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            font-size: medium;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        .auto-style5 {
            color: #000000;
        }
        #xxt{
            border-bottom:1px solid #000;
            background-color:#ccccff;
            width:100%;
            height:80px;
            top:0;
            left:0;
            display:none;
            position:absolute;
            text-align:center;
        }
        .newStyle1 {
            border-style: dotted;
        }
        .auto-style6 {
            border-style: dotted;
            color: #FFFFFF;
        }
        .auto-style7 {
            margin-left: 223px;
        }
    </style>
     <script type="text/javascript" src="../jquery.js"></script>
</head>
    <script>
        $(function () {
            console.log("Errors");
            $("#Button1").click(function() {
                var a = $("#TextBox1").val();
                var b = $("#D").val();
                var x = $("#TextBox3").val();
                var z = $("#TextBox5").val();
                if (x == ""|| z == "" || a == "" || b == "")
            {
                $("#xxt").html("<h3>Fill Details First</h3>").slideDown().delay(2000).slideUp();
            }         
               else 
            {
                    $("#xxt").html("<h3>Saved Sucessfully</h3>").slideDown();//.delay(1000).slideUp();
            }
        });
        });
    </script>
<body style="background-image:url(pal.jpg);width:100%;height:100%; background-repeat:no-repeat; background-size:cover;">
    <form id="form1" runat="server">
        <div id="xxt"></div>
        
        <div class="auto-style2">

            <div class="auto-style2">

            <span class="auto-style3"><span class="auto-style6"><strong>PLAYERS DETAILS</strong></span><strong><br />
            </strong></span><strong>
            <br />
            <span class="auto-style5">Name:</span><span class="auto-style4">&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Category:
            <asp:DropDownList ID="D" runat="server" AutoPostBack="True" Width="164px">
                <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Value:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </strong>&nbsp;<br />
            <br/>
            &nbsp;Team:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:DropDownList ID="D2" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="tname" DataValueField="tname" Width="164px">
                <asp:ListItem>Choose Team</asp:ListItem>
                
            </asp:DropDownList>
            </div>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Disp_Rec" TypeName="dream11.mainteam"></asp:ObjectDataSource>
            <br />
            <br />
&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Save" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"  DataKeyNames="id"   PageSize="8" CssClass="auto-style7" Width="697px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:TemplateField HeaderText="Category" SortExpression="category">
                        <EditItemTemplate>
                            <strong>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("category") %>'>
                                <asp:ListItem>Choose Category</asp:ListItem>
                                <asp:ListItem>Batsman</asp:ListItem>
                                <asp:ListItem>Bowler</asp:ListItem>
                                <asp:ListItem>Wk/Bat</asp:ListItem>
                                <asp:ListItem>All Rounder</asp:ListItem>
                            </asp:DropDownList>
                            </strong>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("category") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="value" HeaderText="Value" SortExpression="value" />
                    <asp:BoundField DataField="team" HeaderText="Team" SortExpression="team" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            </strong>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dream11ConnectionString %>" SelectCommand="SELECT * FROM [players]" DeleteCommand="DELETE FROM [players] WHERE [Id] = @Id" InsertCommand="INSERT INTO [players] ([name], [category], [value], [team]) VALUES (@name, @category, @value, @team)" UpdateCommand="UPDATE [players] SET [name] = @name, [category] = @category, [value] = @value, [team] = @team WHERE [Id] = @Id" ProviderName="System.Data.SqlClient">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="value" Type="Double" />                                          
                <asp:Parameter Name="team" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="value" Type="Double" />                                          
               <asp:Parameter Name="team" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
     
</html>
