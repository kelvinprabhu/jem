<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="items.aspx.vb" Inherits="JEM_MK.items" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}
        .auto-style1 {
            margin-right: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br/>
     <br/>

<div class="contact-us">

  <div class="form">
     
      
    <div class="form-items">
      <asp:TextBox ID="TextBox1" runat="server" class="input" placeholder="ENTER ITEM ID" BorderColor="Red" ReadOnly="True"></asp:TextBox>
      <i class="fas fa-user"></i>
    </div>
    <div class="form-items">
        <asp:Label ID="Label3" runat="server" Text="select quantity"></asp:Label>
        <asp:TextBox ID="Text" runat="server" TextMode="Number" CssClass="input" placeholder="QUANTITY"></asp:TextBox>
    </div>
   <div class="form-items">
 <asp:Label ID="Label1" runat="server" Text="total price"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" class="input" placeholder="TOTAL AMOUNT" ReadOnly="True"></asp:TextBox>
      
    </div>
        <div class="form-items">
      <asp:TextBox ID="TextBox3" runat="server" class="input" placeholder="NAME"></asp:TextBox>
    
    </div>
        <div class="form-items">
      <asp:Label ID="Label2" runat="server" Text="" CssClass="input"></asp:Label>
     
    </div>
        <div class="form-items">
      <asp:TextBox ID="TextBox5" runat="server" class="input" placeholder="PRICE"></asp:TextBox>
      
    </div>
                 <div class="form-items">
          <asp:Button ID="Button4" runat="server" Text="GET TOTAL PRICE"  class="btn btn-success btn-block btn-lg"  />
  </div>
              <div class="form-items">
          <asp:Button ID="Button3" runat="server" Text="GET ITEM DETAILS"  class="btn btn-success btn-block btn-lg"  />
  </div>
  <div class="form-items">
          <asp:Button ID="Button1" runat="server" Text="ADD TO CART" class="btn btn-success btn-block btn-lg"  />
  </div>
        <div class="form-items">
          <asp:Button ID="Button2" runat="server" Text="BOOK NOW"  class="btn btn-success btn-block btn-lg"  />
  </div>
      </div>
    </div>
     <br/>
     <br/>
  

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass="auto-style1">
         <ItemTemplate>
             <div class="col-4">
    <div class="card" style="width: 18rem;">
  <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' cssclass="rounded"/>
  <div class="card-body">
    <h5 class="card-title"><%#Eval("itemname") %></h5>
      
      <h5 class="card-title"><%#Eval("venderid") %></h5>
    <p class="card-text"><%#Eval("itemdesc") %></p>
      <div class="price">
           <h5 class="card-title" style="font-family: Rockwell; font-size: large; font-weight: bolder; color: #FF0000; text-decoration: underline blink"><%#Eval("price") %></h5>
          </div>
     <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="addtocart" CommandArgument='<%#Eval("item_Id") %>' CommandName="boo" />

          
       
   </div>

  </ul>
  </div>
                 <br />
          
            <br/>
    </ItemTemplate>
         

        
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [items]"></asp:SqlDataSource>
        <br/>
     <br/>
     <br/>
     <br/>

</asp:Content>
