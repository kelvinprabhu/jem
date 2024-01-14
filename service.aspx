<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="service.aspx.vb" Inherits="JEM_MK.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="resource/pexels-helena-lopes-745045.jpg" class="d-block w-100" />
      <div class="carousel-caption d-none d-md-block">
        <h5>BOOK OUR ORGANISER</h5>
        <p>OUR ORGANISER WILL BE COORDINATE WITH U OVER ALL THE EVENT AND PROVIDE U WITH GREAT ASSISTANCE.</p>
          <asp:Button ID="Button3" runat="server" Text="BOOK NOW" class="btn btn-outline-info" />
      </div>
    </div>
    <div class="carousel-item">
      <img src="resource/pexels-valeria-boltneva-1123254.jpg" class="d-block w-100"/>
      <div class="carousel-caption d-none d-md-block">
        <h5>BOOK OUR PHOTOGRAPHER</h5>
        <p>Some representative placeholder content for the second slide.</p>
          <asp:Button ID="Button1" runat="server" Text="BOOK NOW" class="btn btn-outline-info"/>
      </div>
    </div>
    <div class="carousel-item">
      <img src="resource/pexels-asep-abdulrahman-4153337.jpg" class="d-block w-100" />
      <div class="carousel-caption d-none d-md-block">
        <h5>BOOK OUR TRAVEL GUIDE</h5>
        <p>Some representative placeholder content for the third slide.</p>
          <asp:Button ID="Button2" runat="server" Text="BOOK NOW" class="btn btn-outline-info"/>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</asp:Content>