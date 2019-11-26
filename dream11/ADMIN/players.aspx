<%@ Page Language="C#" AutoEventWireup="true" CodeFile="players.aspx.cs" Inherits="ADMIN_Default" MaintainScrollPositionOnPostback="true" %>
         
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Sportz &mdash; Watch and Play Along!!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-logo">
          <a href="#"><img src="images/logo.png" alt="Image"></a>
        </div>
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <header class="site-navbar absolute transparent" role="banner">
      <div class="py-3">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-6 col-md-3">
              <a href="#" class="text-secondary px-2 pl-0"><span class="icon-facebook"></span></a>
              <a href="#" class="text-secondary px-2"><span class="icon-instagram"></span></a>
              <a href="#" class="text-secondary px-2"><span class="icon-twitter"></span></a>
              <a href="#" class="text-secondary px-2"><span class="icon-linkedin"></span></a>
            </div>
           <div class="col-6 col-md-9 text-right">
              <div class="d-inline-block"><a href="#" class="text-secondary p-2 d-flex align-items-center"><span class="icon-envelope mr-3"></span> <span class="d-none d-md-block">dhruvkinger813@gmail.com</span></a></div>
              <div class="d-inline-block"><a href="#" class="text-secondary p-2 d-flex align-items-center"><span class="icon-phone mr-0 mr-md-3"></span> <span class="d-none d-md-block">+91 788 897 0163</span></a></div>
            </div>
          </div>
        </div>
      </div>
      <nav class="site-navigation position-relative text-right bg-black text-md-right" role="navigation">
        <div class="container position-relative">
          <div class="site-logo">
            <a href="index.aspx"><img src="images/logo.png" alt=""></a>
          </div>

          <div class="d-inline-block d-md-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

          <ul class="site-menu js-clone-nav d-none d-md-block">
             <ul class="site-menu js-clone-nav d-none d-md-block">
            <li >
              <a href="index.aspx">Admin Home</a> 
            </li>
            <li ><a href="points.aspx">Points</a></li>         
             <li><a href="players.aspx">Players</a></li>
            <li><a href="teams.aspx">Teams</a></li>
            <li><a href="fixtures.aspx">Matches</a></li>
            <li><a href="vdate.aspx">Venues </a></li>       
           <a href="../index.aspx"> <button class="btn btn-primary" type="submit" id="b2">Logout</button></a>
          </ul>
        </div>
      </nav>
    </header>
  
    <div class="site-blocks-cover overlay" style="background-image: url(images/hero_bg_3.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-start">
          <div class="col-md-6 text-center text-md-left" data-aos="fade-up" data-aos-delay="400">
            <h1 class="bg-text-line">PLayer Details</h1>
            <p class="mt-4">Enter the player details before letting him/her in the match.This is like the registration of the player</p>
          </div>
        </div>
      </div>
    </div>


    <div class="site-section bg-light" data-aos="fade-up" align="text-center">
      <div class="container">
        <div class="row align-items-first">
          <div class="col-md-7">
          	<h1 align="align-items-center" class="bg-white" align="text-center" >Player's Details</h1>
              <form id="form1" runat="server" class="bg-white" align="text-center">
              
              <div class="p-3 p-lg-5 border">
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_fname" class="text-black">Name <span class="text-danger">*</span></label>
                      <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1"></asp:TextBox>
                      </div>
                       </div>
                  <%--<div class="p-3 p-lg-5 border">            --%>

                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Category <span class="text-danger">*</span></label>
                    <asp:DropDownList ID="D" runat="server" AutoPostBack="True" CssClass="form-control">
                 <asp:ListItem>Choose Category</asp:ListItem>
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem>
            </asp:DropDownList>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Value <span class="text-danger">*</span></label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox3"></asp:TextBox>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Team <span class="text-danger">*</span></label>
                     <asp:DropDownList ID="D2" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="tname" DataValueField="tname" CssClass="form-control">
                <asp:ListItem>Choose Team</asp:ListItem>                
            </asp:DropDownList>
                  </div>
                </div>
                

                
                <div class="form-group row">
                  <div class="col-lg-12">
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" Text="Save" />
                  </div>
                </div> 
                  
                   <div>
                     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="None"  DataKeyNames="id" Width="530px" PageSize="8">
                
                <Columns>
                    <asp:TemplateField HeaderText="Name" SortExpression="name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>' Width="121px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category" SortExpression="category">
                        <EditItemTemplate>
                            <strong>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("category") %>' Width="124px">
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
                    <asp:TemplateField HeaderText="Value" SortExpression="value">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("value") %>' Width="72px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("value") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="team" HeaderText="Team" SortExpression="team">
                    <ControlStyle Width="100px" />
                    <ItemStyle Width="80px" />
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>                
            </asp:GridView>
                  </div>
                   
                  
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Disp_Rec" TypeName="dream11.mainteam"></asp:ObjectDataSource>
       
                  
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
                  </div>
              </form>
          </div>
            
          </div>
         
        </div>
      </div>
    </div>

   

    <footer class="site-footer border-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="mb-5">
              <h3 class="footer-heading mb-4">About Sportz</h3>
              <p>We are the website that will help you to play along with the players you love and this is where the real game starts. You will have a great faceoff with other teams who just like you will have their own team to compete and this will be to get to the top and the best one will WIN.</p>
            </div>

            
            
          </div>
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="row mb-5">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Quick Menu</h3>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                 <li><a href="index.aspx">Home</a></li>
                  <li><a href="points.aspx">Points</a></li>
                  <li><a href="players.aspx">Players</a></li>
                  <li><a href="fixtures.aspx">Matches</a></li>
                    <li><a href="teams.aspx">Teams</a></li>
                    <li><a href="vdate.aspx"></a></li>
                </ul>
              </div>
              
            </div>

            <div class="row">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Follow Us</h3>

                <div>
                  <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
              </div>
            </div>

          </div>

          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="mb-5">
              <h3 class="footer-heading mb-4">Watch Video</h3>

              <div class="block-16">
                <figure>
                  <img src="images/img_1.jpg" alt="Image placeholder" class="img-fluid rounded">
                  <a href="https://vimeo.com/channels/staffpicks/93951774" class="play-button popup-vimeo"><span class="icon-play"></span></a>
                </figure>
              </div>

            </div>

            <div class="mb-5">
              <h3 class="footer-heading mb-2">Subscribe Newsletter</h3>
              <p>Want the latest updates? Then why wait for it we will send them ourselves.Subscribe to us.s</p>

              <form action="#" method="post">
                <div class="input-group mb-3">
                  <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                  <div class="input-group-append">
                    <button class="btn btn-primary" type="button" id="button-addon2">Send</button>
                  </div>
                </div>
              </form>

            </div>

          </div>
          
        </div>
        
          
        </div>
     
    </footer>
  

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>