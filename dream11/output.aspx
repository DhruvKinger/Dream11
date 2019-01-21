<%@ Page Language="C#" AutoEventWireup="true" CodeFile="output.aspx.cs" Inherits="output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>

    
<body style="background-image:url(personal.jpg);width:80%;height:80%; background-repeat:no-repeat; background-size:cover;"/>
    
    <form id="form1" runat="server">
        <div>
            <div class="auto-style2">
                <span class="auto-style1"><strong>&nbsp;WINNER OF THE EVENT<br />
                </strong></span>
                <br />
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" style="text-align: center; margin-left: 282px; margin-right: 106px" Width="596px">
                <Columns>
                    <asp:BoundField DataField="tname" HeaderText="Team Name" SortExpression="tname" />
                    <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
                    <asp:BoundField DataField="score" HeaderText="Points" SortExpression="score" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [tname], [time], [score] FROM [create_team] ORDER BY [score] DESC, [time]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
