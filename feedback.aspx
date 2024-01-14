<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="feedback.aspx.vb" Inherits="JEM_MK.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />  
      <br />  
      <br />  
      <br />  
      <br />  
      <br />  
    <div class="title">
    <h1> UR FEEDBACK</h1>
  </div>
    <div class="contact-us">

  <div class="form">
    <div class="form-items">
      <asp:TextBox ID="TextBox2" runat="server" type="text" class="input" placeholder="Email"></asp:TextBox>
      <i class="fas fa-envelope"></i>
    </div>
    <div class="form-items">
     <asp:TextBox ID="TextBox1" runat="server" class="input message" cols="30" rows="10" placeholder="Message....."></asp:TextBox>
    </div>
  </div>
 
  
  <div class="form-items">
          <asp:Button ID="Button1" runat="server" Text="POST" class="btn btn-success btn-block btn-lg"  />
  </div>
  
  
  <div class="social-icons">
    <div class="facebook">
      <i class="fab fa-facebook-f"></i>
    </div>
    <div class="twitter">
      <i class="fab fa-twitter"></i>
    </div>
    <div class="google">
      <i class="fab fa-google-plus-g"></i>
    </div>
  </div>
  
</div>
      <br />  

      <br />  
      <br />  
      <br />  
      <br />  
</asp:Content>
