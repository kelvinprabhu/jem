<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="CARRER.aspx.vb" Inherits="JEM_MK.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                               <br />
                            <br />
                            <br />
                            <br />
                            <br />
    <div class="contact-us">

  <div class="form">
       <div class="form-items">
      <asp:TextBox ID="TextBox4" runat="server"  class="input" placeholder="COLLEGE ID"></asp:TextBox>
      <i class="fas fa-institution"></i>
    </div>
    <div class="form-items">
      <asp:TextBox ID="TextBox3" runat="server"   class="input" placeholder="NAME"></asp:TextBox>
      <i class="fas fa-user"></i>
    </div>
    <div class="form-items">
      <asp:TextBox ID="TextBox2" runat="server"  TextMode="Number" class="input"  placeholder="PHONE NO"></asp:TextBox>
      <i class="fas fa-phone"></i>
    </div>
    
       
    <div class="form-items">
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input">
            <asp:ListItem Value="DEPARTMENT"></asp:ListItem>
            <asp:ListItem Value="CS"></asp:ListItem>
            <asp:ListItem Value="MANAGEMENT"></asp:ListItem>
            <asp:ListItem Value="HUMANITIES"></asp:ListItem>
            <asp:ListItem Value="ECONOMICS"></asp:ListItem>
            <asp:ListItem Value="COMMERCE"></asp:ListItem>
            <asp:ListItem Value="ARTS"></asp:ListItem>
            <asp:ListItem Value="LIFE SCIENCE"></asp:ListItem>
        </asp:DropDownList>
        
    </div>
             <div class="form-items">
       <asp:DropDownList ID="DropDownList2" runat="server" CssClass="input">
           <asp:ListItem Value="MORNING"></asp:ListItem>
           <asp:ListItem Value="AFTERNOON"></asp:ListItem>
                 </asp:DropDownList>
    </div>
    
  <br/>
      <asp:Button ID="Button1" runat="server" Text="POST" class="btn btn-success btn-block btn-lg" />
</div>
        </div>
                            <br />
                            <br />
                            <br />
</asp:Content>
