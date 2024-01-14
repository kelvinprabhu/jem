<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="advup.aspx.vb" Inherits="JEM_MK.advup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <br />
         
    <br />
                       

     <div class="contact-us">
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
         <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
  <div class="title">
    <h1>ADVERTISEMENT +</h1>
  </div>
  <div class="form">
    <div class="form-items">
      <asp:TextBox ID="TextBox3" runat="server"  type="text" class="input" placeholder="TITLE"></asp:TextBox>
      <i class="fas fa-user"></i>
    </div> 
    <div class="form-items">
      <asp:TextBox ID="TextBox2" runat="server" type="text" class="input"  placeholder="ADVERTISER NAME"></asp:TextBox>
      <i class="fas fa-user"></i>
    </div>
        <div class="form-items">
      <asp:TextBox ID="TextBox4" runat="server" type="text" class="input message" cols="30" rows="10"   placeholder="ADDRESS"></asp:TextBox>
      <i class="fas fa-envelope"></i>
    </div>
    <div class="form-items">
     <asp:TextBox ID="TextBox1" runat="server" class="input message" cols="30" rows="10" placeholder="ADV DESCRIPTION....."></asp:TextBox>
    </div>
       <div class="form-items">
      <asp:TextBox ID="TextBox5" runat="server" type="text" TextMode="Number" class="input"  placeholder="PHONE NO"></asp:TextBox>
      <i class="fas fa-user"></i>
    </div>
        <div class="form-items">
      <asp:TextBox ID="TextBox6" runat="server" type="text" TextMode="Date" class="input"  placeholder="DATE"></asp:TextBox>
      <i class="fas fa-user"></i>
    </div>
        <div class="form-items">
     <asp:DropDownList ID="DropDownList1" runat="server" class="input"  placeholder="CATEGORY">
         <asp:ListItem Value="OFFERS AND DISCOUNT"></asp:ListItem>
         <asp:ListItem Value="LOST AND FOUND"></asp:ListItem>
         <asp:ListItem Value="PG VACANCY"></asp:ListItem>
         <asp:ListItem Value="HOSTEL VACANCY"></asp:ListItem>
         <asp:ListItem Value="SHOP INORGURATION"></asp:ListItem>
         <asp:ListItem Value="GENERAL"></asp:ListItem>
            </asp:DropDownList>
      
    </div>
    <div class="form-items">
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="input" />

    </div>
<div class="form-items">
       
        <asp:Image ID="Image2" runat="server" CssClass="input" />
    </div>
  
    
    
      <asp:Button ID="Button1" runat="server" Text="UPLOAD" class="btn btn-success btn-block btn-lg"  />
 
          </div>
          </div>

                            <br />
                            <br />
                         
</asp:Content>
