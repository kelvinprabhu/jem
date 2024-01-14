<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="advcol.aspx.vb" Inherits="JEM_MK.advcol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <br/>
     

    <br/>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="adv_id" DataSourceID="SqlDataSource1">
      

     
        <ItemTemplate>
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
            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' cssclass="image"/>
          </div>
          <div class="text-box">
<h1><%# Eval("title") %></h1>
<br/>
<h2><%# Eval("category") %></h2>
<br/>
<h3><%# Eval("advertiser") %></h3>
<br/>
<h3><%# Eval("address") %></h3>
            
            <p><%# Eval("description") %></p>
<h3><%# Eval("phone_no") %></h3>
          </div>
        </div>
              <br/>
     <br/>
     <br/>
        <div class="media-icons">

          <a href="#" class="icon"><i class="fab fa-instagram"></i></a>
        
          <a href="#" class="icon"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
    </section>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
        </ItemTemplate>
       
       
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [advertisement]"></asp:SqlDataSource>
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

