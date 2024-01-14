<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="rep.aspx.vb" Inherits="JEM_MK.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">


    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


   
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
 <br/>
    <nav>
			<h2 class="logo2">jem+ <br/> ADM<span>IN+</span></h2>
			<ul>
				<li><a href="ahome.aspx"> HOME </a></li>
							<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            MASTER EDIT
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="admedit.aspx">ADMIN EDIT</a></li>
            <li><a class="dropdown-item" href="packedit.aspx">PACKAGES EDIT</a></li>
            <li><a class="dropdown-item" href="itmad.aspx">ITEM EDIT</a></li> 
			 
          </ul>
        </li>
				
				<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            MASTER VIEWS
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="massview.aspx">PROFILE VIEWS</a></li>
            <li><a class="dropdown-item" href="feed.aspx">FEEDBACK VIEW</a></li>
      
          </ul>
        </li>
				
			</ul>
			<a href="rep.aspx" class="btn">REPORT</a>
		</nav>
    <br/>
    <br/>
<section class="home" id="top" data-section="section1">
   
    <video class="video-slide active" src="resource/Group%20of%20Friends%20Toasting%20with%20Beer.mp4" autoplay muted loop></video> 
    <div class="content active">
          
        <h1>JEM+ REPORT.<br><span>"A person must never cease striving to enjoy life.</span></h1>
        
        
      </div>
   
  </section>


  <section class="services">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="owl-service-item owl-carousel">
          
            <div class="item">
              <div class="icon">
                <img src="assets/images/service-icon-01.png" alt="">
              </div>
              <div class="down-content">
                <h4>JEM STATISTICAL REPORT</h4>
              
              </div>
            </div>
            
            <div class="item">
              <div class="icon">
                <img src="assets/images/service-icon-02.png" alt="">
              </div>
              <div class="down-content">
                <h4>TOTAL ORDERS</h4>
                
                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              </div>
            </div>
            
            <div class="item">
              <div class="icon">
                <img src="assets/images/service-icon-03.png" alt="">
              </div>
              <div class="down-content">
                <h4>CUSTOMER JOINED US</h4>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
              </div>
            </div>
            
            <div class="item">
              <div class="icon">
                <img src="assets/images/service-icon-02.png" alt="">
              </div>
              <div class="down-content">
                <h4>VENDER JOINED US</h4>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
              </div>
            </div>
            
            <div class="item">
              <div class="icon">
                <img src="assets/images/service-icon-03.png" alt="">
              </div>
              <div class="down-content">
                <h4>INCOME GENERATED</h4>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="upcoming-meetings" id="meetings">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading">
            <h2>OTHER VIEWS</h2>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="categories">
            <h4>ADMIN VIEWS</h4>
            <ul>
              <li><a href="#">Sed tempus enim leo</a></li>
              <li><a href="#">Aenean molestie quis</a></li>
              <li><a href="#">Cras et metus vestibulum</a></li>
              <li><a href="#">Nam et condimentum</a></li>
              <li><a href="#">Phasellus nec sapien</a></li>
            </ul>
            <div class="main-button-red">
              <a href="ahome.aspx">BACK TO HOME</a>
            </div>
          </div>
        </div>
 
      </div>
    </div>
  </section>
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/video.js"></script>

    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/custom.js"></script>
    


   


</asp:Content>
