<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create_team.aspx.cs" Inherits="create_team" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style4 {
            font-size: medium;
            color: #FFFFFF;
        }
        .auto-style5 {
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
    </style>
</head>
<body style="background-image:url(master1.jpg);width:100%;height:100%; background-repeat:no-repeat; background-size:cover;">
    <form id="form1" runat="server">
        <div class="auto-style5">
            <strong>CHOOSE YOU PERFECT XI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            <asp:Button ID="Button3" runat="server" BorderColor="White" BorderStyle="Dashed" OnClick="Button3_Click" style="color: #FFFFCC; font-weight: 700; font-size: large; background-color: #66FFFF" Text="PERSONAL_INFO" />
        </div>
        <p>
            &nbsp;</p>
        <p>
            <strong><span class="auto-style1">Enter Your Team Name :&nbsp;&nbsp; </span></strong>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Height="20px" Width="175px"></asp:TextBox>
        </p>
        <p>
            <strong><span class="auto-style4">Player 1:&nbsp;</span></strong>&nbsp;
            <asp:DropDownList ID="D1" runat="server" AutoPostBack="True" DataTextField="category" DataValueField="category" >
                <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" Width="158px">
            </asp:DropDownList>
        </p>
        <p>
            <strong><span class="auto-style4">Player 2:</span><span class="auto-style1"> </span></strong>&nbsp; <asp:DropDownList ID="D3" runat="server" AutoPostBack="True"  DataTextField="name" DataValueField="name">
            <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem> </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D4" runat="server" AutoPostBack="True"  DataTextField="name" DataValueField="name" DataSourceID="SqlDataSource2" Width="158px">
            </asp:DropDownList>
        </p>
        <p>
            <strong><span class="auto-style4">Player 3:&nbsp;</span></strong>&nbsp; <asp:DropDownList ID="D5" runat="server" AutoPostBack="True"  DataTextField="name" DataValueField="name">
            <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem> </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D6" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="name" Width="158px">
            </asp:DropDownList>
        </p>
        <p>
            <span class="auto-style4"><strong>Player 4:&nbsp;</strong></span>&nbsp; <asp:DropDownList ID="D7" runat="server" AutoPostBack="True" DataTextField="name" DataValueField="name">
             <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem></asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D8" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="name" DataValueField="name" Width="158px">
            </asp:DropDownList>
        </p>
        <p>
            <span class="auto-style4"><strong>Player 5:&nbsp;</strong></span>&nbsp; <asp:DropDownList ID="D9" runat="server" AutoPostBack="True"  DataTextField="name" DataValueField="name">
             <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem></asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D10" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="name" DataValueField="name" Width="158px">
             </asp:DropDownList>
        </p>
        <p>
            <strong><span class="auto-style4">Player 6:&nbsp;</span></strong>&nbsp; <asp:DropDownList ID="D11" runat="server" AutoPostBack="True"  DataTextField="name" DataValueField="name">
            <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem> </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D12" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="name" DataValueField="name" Width="158px">
            </asp:DropDownList>
        </p>
        <p>
            <strong><span class="auto-style4">Player 7:</span></strong>&nbsp;&nbsp; <asp:DropDownList ID="D13" runat="server" AutoPostBack="True" DataTextField="name" DataValueField="name">
            <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem>

            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D14" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="name" DataValueField="name" Width="158px">
            </asp:DropDownList>
        </p>
        <p>
            <strong><span class="auto-style4">Player 8:&nbsp;</span></strong>&nbsp; <asp:DropDownList ID="D15" runat="server" AutoPostBack="True" DataTextField="name" DataValueField="name">
             <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D16" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource8" DataTextField="name" DataValueField="name" Width="158px">
            </asp:DropDownList>
        </p>
        <p>
            <span class="auto-style4"><strong>Player 9:&nbsp;</strong></span>&nbsp; <asp:DropDownList ID="D17" runat="server" AutoPostBack="True"  DataTextField="name" DataValueField="name">
             <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D18" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="name" DataValueField="name" Width="158px">
            </asp:DropDownList>
        </p>
        <p>
            <span class="auto-style4"><strong>Player 10:</strong></span>
            <asp:DropDownList ID="D19" runat="server" AutoPostBack="True"  DataTextField="name" DataValueField="name">
                 <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D20" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource10" DataTextField="name" DataValueField="name" Width="158px">
            </asp:DropDownList>
        </p>
        <p>
            <span class="auto-style4"><strong>Player 11:</strong></span>
            <asp:DropDownList ID="D21" runat="server" AutoPostBack="True"  DataTextField="name" DataValueField="name">
             <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:DropDownList ID="D22" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource11" DataTextField="name" DataValueField="name" Width="158px">
            </asp:DropDownList>
        </p>
        <p>
            <span class="auto-style4"><strong>Enter Date &amp;Time: </strong></span>&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="DateTime" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="SAVE" />
        </p>
        <p>
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CHOOSE YOUR CAPTAIN</span>&nbsp; <span class="auto-style6">: </span>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="D23" runat="server" AutoPostBack="True" Width="158px" OnSelectedIndexChanged="D23_SelectedIndexChanged">
            </asp:DropDownList>
        &nbsp;</p>
        <p>
            <span class="auto-style1">CHOOSE YOUR VICE CAPTAIN</span> <span class="auto-style6">: </span>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="D24" runat="server" AutoPostBack="True" Width="158px" OnSelectedIndexChanged="D23_SelectedIndexChanged">
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" OnClick="Button2_Click" Text="FINAL TEAM SAVE" />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE ([category] = @category)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D1" Name="category" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Disp_Rec" TypeName="dream11.maincreate_team"></asp:ObjectDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE (([category] = @category) AND ([name] &lt;&gt; @name))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D3" Name="category" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D2" Name="name" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE (([category] = @category) AND ([name] &lt;&gt; @name) AND ([name] &lt;&gt; @name2))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D5" Name="category" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D4" Name="name" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D2" Name="name2" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE (([category] = @category) AND ([name] &lt;&gt; @name) AND ([name] &lt;&gt; @name2) AND ([name] &lt;&gt; @name3))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D7" Name="category" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D2" Name="name" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D4" Name="name2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D6" Name="name3" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE (([category] = @category) AND ([name] &lt;&gt; @name) AND ([name] &lt;&gt; @name2) AND ([name] &lt;&gt; @name3) AND ([name] &lt;&gt; @name4))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D9" Name="category" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D2" Name="name" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D4" Name="name2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D6" Name="name3" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D8" Name="name4" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE (([category] = @category) AND ([name] &lt;&gt; @name)  AND ([name] &lt;&gt; @name2) AND ([name] &lt;&gt; @name3) AND ([name] &lt;&gt; @name4) AND ([name] &lt;&gt; @name5))">
           <SelectParameters> 
               <asp:ControlParameter ControlID="D11" Name="category" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D2" Name="name" PropertyName="SelectedValue" Type="String" />
               <asp:ControlParameter ControlID="D4" Name="name2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D6" Name="name3" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D8" Name="name4" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="D10" Name="name5" PropertyName="SelectedValue" Type="String" />
               </SelectParameters> </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE (([category] = @category)  AND ([name] &lt;&gt; @name)  AND ([name] &lt;&gt; @name2) AND ([name] &lt;&gt; @name3) AND ([name] &lt;&gt; @name4) AND ([name] &lt;&gt; @name5) AND ([name] &lt;&gt; @name6) )">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D13" Name="category" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="D2" Name="name" PropertyName="SelectedValue" Type="String" />
               <asp:ControlParameter ControlID="D4" Name="name2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D6" Name="name3" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D8" Name="name4" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="D10" Name="name5" PropertyName="SelectedValue" Type="String" />
                     <asp:ControlParameter ControlID="D12" Name="name6" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE (([category] = @category) AND ([name] &lt;&gt; @name)  AND ([name] &lt;&gt; @name2) AND ([name] &lt;&gt; @name3) AND ([name] &lt;&gt; @name4) AND ([name] &lt;&gt; @name5) AND ([name] &lt;&gt; @name6)  AND ([name] &lt;&gt; @name7) ) ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D15" Name="category" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="D2" Name="name" PropertyName="SelectedValue" Type="String" />
               <asp:ControlParameter ControlID="D4" Name="name2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D6" Name="name3" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D8" Name="name4" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="D10" Name="name5" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="D12" Name="name6" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="D14" Name="name7" PropertyName="SelectedValue" Type="String" /></SelectParameters></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE (([category] = @category) AND ([name] &lt;&gt; @name)  AND ([name] &lt;&gt; @name2) AND ([name] &lt;&gt; @name3) AND ([name] &lt;&gt; @name4) AND ([name] &lt;&gt; @name5) AND ([name] &lt;&gt; @name6)  AND ([name] &lt;&gt; @name7) AND ([name] &lt;&gt; @name8))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D17" Name="category" PropertyName="SelectedValue" Type="String" />
                 <asp:ControlParameter ControlID="D2" Name="name" PropertyName="SelectedValue" Type="String" />
               <asp:ControlParameter ControlID="D4" Name="name2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D6" Name="name3" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D8" Name="name4" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="D10" Name="name5" PropertyName="SelectedValue" Type="String" />
                     <asp:ControlParameter ControlID="D12" Name="name6" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="D14" Name="name7" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D16" Name="name8" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE (([category] = @category) AND ([name] &lt;&gt; @name)  AND ([name] &lt;&gt; @name2) AND ([name] &lt;&gt; @name3) AND ([name] &lt;&gt; @name4) AND ([name] &lt;&gt; @name5) AND ([name] &lt;&gt; @name6)  AND ([name] &lt;&gt; @name7) AND ([name] &lt;&gt; @name8) AND ([name] &lt;&gt; @name9))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D19" Name="category" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="D2" Name="name" PropertyName="SelectedValue" Type="String" />
               <asp:ControlParameter ControlID="D4" Name="name2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D6" Name="name3" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D8" Name="name4" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="D10" Name="name5" PropertyName="SelectedValue" Type="String" />
                     <asp:ControlParameter ControlID="D12" Name="name6" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="D14" Name="name7" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D16" Name="name8" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D18" Name="name9" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [players] WHERE (([category] = @category) AND ([name] &lt;&gt; @name)  AND ([name] &lt;&gt; @name2) AND ([name] &lt;&gt; @name3) AND ([name] &lt;&gt; @name4) AND ([name] &lt;&gt; @name5) AND ([name] &lt;&gt; @name6)  AND ([name] &lt;&gt; @name7) AND ([name] &lt;&gt; @name8) AND ([name] &lt;&gt; @name9) AND ([name] &lt;&gt; @name10))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="D21" Name="category" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="D2" Name="name" PropertyName="SelectedValue" Type="String" />
               <asp:ControlParameter ControlID="D4" Name="name2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D6" Name="name3" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D8" Name="name4" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="D10" Name="name5" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="D12" Name="name6" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="D14" Name="name7" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D16" Name="name8" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D18" Name="name9" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="D20" Name="name10" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
