<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="gall.aspx.vb" Inherits="JEM_MK.gall" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
     <br/>
     <br/>
    <br/>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="event_id">
              <ItemTemplate>
     <div class="card" style="width: 18rem;">
    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' cssclass="rounded"/>
  <div class="card-body">
    <h5 class="card-title"><%#Eval("event_id") %></h5>
    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
    <p class="card-text"><%#Eval("event_desc") %></p>
    <a href="#" class="card-link"><%#Eval("link") %></a>
   
  </div>
</div>
                 <br />
          
            <br/>
    </ItemTemplate>
    </asp:ListView>
    <br/>
    <br/>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [pastevent]"></asp:SqlDataSource>
     <br/>
     <br/>
    <br/>
</asp:Content>
