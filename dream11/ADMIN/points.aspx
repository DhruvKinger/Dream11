<%@ Page Language="C#" AutoEventWireup="true" CodeFile="points.aspx.cs" Inherits="ADMIN_point"  MaintainScrollPositionOnPostback="true"%>
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
            <li >
              <a href="points.aspx">Points</a>
            </li>
            
            
            <li><a href="players.aspx">Players</a></li>
            <li><a href="teams.aspx">Teams</a></li>
            <li><a href="fixtures.aspx">Matches</a></li>
            <li><a href="vdate.aspx">Venues</a></li>       
           <a href="../index.aspx"> <button class="btn btn-primary" type="submit" id="b2">Logout</button></a>
          </ul>
        </div>
      </nav>
    </header>
  
    <div class="site-blocks-cover overlay" style="background-image: url(images/hero_bg_3.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-start">
          <div class="col-md-6 text-center text-md-left" data-aos="fade-up" data-aos-delay="400">
            <h1 class="bg-text-line">Points Updater</h1>
            <p class="mt-4">Assigning the value to the player as per their play and experience. This will be the main point system.</p>
          </div>
        </div>
      </div>
    </div>


    <div class="site-section bg-light" data-aos="fade-up" align="text-center">
      <div class="container">
        <div class="row align-items-first">
          <div class="col-md-7">
          	<h1 align="align-items-center" class="bg-white" align="text-center" >Points Updater</h1>
         <form action="" method="post" class="bg-white" align="text-center" runat="server">
             
              <div class="p-3 p-lg-5 border">
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_fname" class="text-black">Choose Category </label>
                   <asp:DropDownList ID="D1" runat="server" AutoPostBack="true" CssClass="form-control" >
                
                <asp:ListItem>Batsman</asp:ListItem>
                <asp:ListItem>Bowler</asp:ListItem>
                <asp:ListItem>Wk/Bat</asp:ListItem>
                <asp:ListItem>All Rounder</asp:ListItem>
            </asp:DropDownList>
                  </div>                  
                </div>

                   <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_fname" class="text-black">Choose Team </label>
                      <asp:DropDownList runat="server" AutoPostBack="True" CssClass="form-control" ID="Dt" DataSourceID="SqlDataSource2" DataTextField="tname" DataValueField="tname"></asp:DropDownList>
               </div>
                   </div>

                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Choose Player </label>
                       <asp:DropDownList ID="D2" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" CssClass="form-control" >
            </asp:DropDownList>
                   </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Points </label>
                      <asp:TextBox ID="T1" runat="server" CssClass="form-control"></asp:TextBox>
                   </div>
                </div>         
                               
                                 
                <div class="form-group row">
                  <div class="col-lg-12">
                      <asp:Button ID="Button1" runat="server" Text="Update Points" class="btn btn-primary btn-lg btn-block" onclick="Button1_Click"  />
                   
                  </div>
                </div>
              </div>
            </form>
          </div>
            
          </div>
         <div><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT * FROM [players] WHERE (([category] = @category) AND ([team] = @team))">
            <SelectParameters>
                <asp:ControlParameter ControlID="D1" Name="category" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="Dt" Name="team" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=dream11;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT * FROM [team]"></asp:SqlDataSource>
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
      </div>
    </footer>
  </div>

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