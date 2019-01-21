<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teams.aspx.cs" Inherits="ADMIN_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            color: #FEFFFF;
        }
        .auto-style4 {
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style6 {
            color: #000000;
            font-size: xx-large;
            text-align: center;
        }
        .newStyle1 {
            border-style: dotted;
        }
        .newStyle2 {
            border-style: groove;
        }
        .newStyle3 {
            border-width: 2px;
        }
        .newStyle4 {
            border-width: medium;
            border-style: dashed;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
            margin-left: 236px;
        }
    </style>
     <script type="text/javascript" src="../jquery.js"></script>
</head>
<script>
    $(function () {
       
       console.log("Errors");
        $("#Button1").click(function () {
             var x = $("#TextBox1").val();
        if (x =="")
        {
            alert("Enter the team name ");
        }
        else {
            alert("Saved Sucessfully");
        }
        });
    });


</script>
<body style="background-image:url(t.jpg);width:100%; height:100%; background-repeat:no-repeat; background-size:cover;">
    <form id="form1" runat="server">
        <p class="auto-style6">
            <strong class="newStyle4">TEAMS</strong></p>
        <p class="auto-style7">
            <span class="auto-style3">Team Name:&nbsp;&nbsp;
            </span>
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
&nbsp;&nbsp; 
        </p>
        <div class="auto-style7">
        <strong>
        &nbsp;
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="Save" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
            <br />
            &nbsp;<br />
&nbsp;<strong>&nbsp;
        </strong>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="5" GridLines="Horizontal" CssClass="auto-style8" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" Width="740px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="tname" HeaderText="TEAM" SortExpression="tname" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dream11ConnectionString %>" DeleteCommand="DELETE FROM [team] WHERE [Id] = @Id" InsertCommand="INSERT INTO [team] ([tname]) VALUES (@tname)" SelectCommand="SELECT * FROM [team]" UpdateCommand="UPDATE [team] SET [tname] = @tname WHERE [Id] = @Id" ProviderName="System.Data.SqlClient">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tname" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
    
</html>
