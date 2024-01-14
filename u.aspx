<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="u.aspx.vb" Inherits="JEM_MK.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <div class="container d-lg-flex">
        <div class="row">
            <div class="col">
         <div class="box-1 bg-light user"> 
            <div class="d-flex align-items-center mb-3">
                <img src="https://images.pexels.com/photos/4925916/pexels-photo-4925916.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" class="pic rounded-circle" alt="">
               

            </div> 
            <div class="box-inner-1 pb-3 mb-3 ">
                <div class="d-flex justify-content-between mb-3 userdetails">
                    <p class="fw-bold">other services provided by jem</p>

                </div>
                <div id="my" class="carousel slide carousel-fade img-details" data-bs-ride="carousel" data-bs-interval="2000">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#my" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1">

                        </button> <button type="button" data-bs-target="#my" data-bs-slide-to="1" aria-label="Slide 2">
                                  </button>
                        <button type="button" data-bs-target="#my" data-bs-slide-to="2" aria-label="Slide 3"></button>

                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260" class="d-block w-100"> 

                        </div> 
                        <div class="carousel-item">
                            <img src="https://images.pexels.com/photos/270694/pexels-photo-270694.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="d-block w-100">

                        </div> 
                        <div class="carousel-item">
                            <img src="https://images.pexels.com/photos/7974/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500" class="d-block w-100"> 

                        </div> 

                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#my" data-bs-slide="prev"> 
                        <div class="icon">
                            <span class="fas fa-arrow-left"></span>

                        </div>
                        <span class="visually-hidden">Previous</span> </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#my" data-bs-slide="next"> 
                        <div class="icon"> 
                            <span class="fas fa-arrow-right">

                            </span> </div> <span class="visually-hidden">Next</span> 

                    </button> 

                </div> 
     
            </div>


        </div>
                </div>
            <div class="col-md-6">
   
        <div class="contact-us">
  <div class="title">
    <h1>UPLOAD PAST EVENT HERE</h1>
  </div>
  <div class="form">
    <div class="form-items">
      <asp:TextBox ID="TextBox3" runat="server"  type="text" class="input" placeholder="EVENT ID"></asp:TextBox>
      <i class="fas fa-user"></i>
    </div>
    <div class="form-items">
      <asp:TextBox ID="TextBox2" runat="server" type="text" class="input"  placeholder="LINK"></asp:TextBox>
      <i class="fas fa-envelope"></i>
    </div>
    <div class="form-items">
     <asp:TextBox ID="TextBox1" runat="server" class="input message" cols="30" rows="10" placeholder="EVENT DESCRIPTION....."></asp:TextBox>
    </div>
       </div>
    <div class="form-items">
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="input" />
        
    </div>
             <div class="form-items">
        
        <asp:Image ID="Image2" runat="server" CssClass="rounded mx-auto d-block" CLASS="input"/>
    </div>
  
      <asp:Button ID="Button1" runat="server" Text="POST" class="btn btn-success btn-block btn-lg"  />
          </div>
          </div>
          </div>
          </div>
    <br/>
    <br/>
    <br/>
    </asp:Content>

