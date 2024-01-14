<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="pe.aspx.vb" Inherits="JEM_MK.pe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     <section class="sec-01">
      <div class="container">
        <h2 class="main-title">JEM</h2>
    <br/>
     <br/>
     <br/>
             <br/>
     <br/>
     <br/>
        <div class="content">
          <div class="image">
           <img src="resource/pexels-min-an-977460.jpg"   alt=""/>
          </div>
          <div class="text-box">
            <h3>Lorem Ipsum</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
            aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
          </div>
        </div>
              <br/>
     <br/>
     <br/>
        <div class="media-icons">
          <a href="#" class="icon"><i class="fab fa-facebook"></i></a>
          <a href="#" class="icon"><i class="fab fa-instagram"></i></a>
          <a href="#" class="icon"><i class="fab fa-twitter"></i></a>
          <a href="#" class="icon"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
    </section>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
    <section class="sec-02">
      <div class="container">
        <h3 class="section-title">m</h3>
              <br/>
     <br/>
             <br/>
     <br/>
     <br/>   <br/>
     <br/>
     <br/>
     <br/>
        <div class="content">
          <div class="image">
           <img src="resource/pexels-valeria-boltneva-1123254.jpg"  alt="" />
          </div>
          <div class="text-box">
            <h4 class="info-title">Description</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
            aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
          </div>
        </div>
      </div>
    </section>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
    <section class="sec-03">
      <div class="container">
        <h3 class="section-title">Lorem Ipsum</h3>
              <br/>
     <br/>
     <br/>
        <div class="content">
                <br/>
     <br/>
     <br/>
          <div class="media-info">
            <li><a href="#"><i class="fab fa-facebook"></i> Facebook</a></li>
            <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
            <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
            <li><a href="#"><i class="fab fa-youtube"></i> Youtube</a></li>
            <li><a href="#"><i class="fab fa-linkedin"></i> Linkedin</a></li>
          </div>
          <div class="image">
       <img src="resource/pexels-helena-lopes-745045.jpg"  alt="" />
          </div>
        </div>
      </div>
    </section>
     <br/>
     <br/>
 
     <br/>
     <br/>
     <br/>
       <script>
      //common reveal options to create reveal animations
      ScrollReveal({
        //reset: true,
        distance: '60px',
        duration: 2500,
        delay: 400
      });

      //target elements, and specify options to create reveal animations
      ScrollReveal().reveal('.main-title, .section-title', { delay: 500, origin: 'left' });
      ScrollReveal().reveal('.sec-01 .image, .info', { delay: 600, origin: 'bottom' });
      ScrollReveal().reveal('.text-box', { delay: 700, origin: 'right' });
      ScrollReveal().reveal('.media-icons i', { delay: 500, origin: 'bottom', interval: 200 });
      ScrollReveal().reveal('.sec-02 .image, .sec-03 .image', { delay: 500, origin: 'top' });
      ScrollReveal().reveal('.media-info li', { delay: 500, origin: 'left', interval: 200 });
       </script>
</asp:Content>