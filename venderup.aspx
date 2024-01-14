<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="venderup.aspx.vb" Inherits="JEM_MK.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <br />
                            <br />
                            <br />
                            <br />
              <div class="container"  background-color: #FFFFFF;">
      <div class="row ">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                        
                      
                     <img src="resource/VVENDER.png" style="position: relative; clip: rect(auto, auto, auto, auto)" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>VENDER</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <label>VENDER ID</label>
                         <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="VEDER ID"></asp:TextBox>
                         </div>
                        <label>EMAIL ID</label>
                         <div class="form-group">
                          <input type="text" readonly="" class="form-control-plaintext" id="Email" value="email@example.com">
                             
                         </div>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="EMAIL ID"></asp:TextBox>
                        </div>
                        <label>PASSWORD</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                            <label>SHOP NAME</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="FULL NAME"></asp:TextBox>
                        </div>
                      
                            <label>ADDRESS</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" class="input message" cols="30" rows="5" placeholder="ADDRESS ..." Columns="5" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <label>PHONE NO</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="PHONE NO" TextMode="Phone"></asp:TextBox>
                        </div>
                            <label>PRODUCT DESCRIPTION</label>
                        <div class="form-group">
                           <asp:TextBox  ID="TextBox2" runat="server" class="input message" cols="50" rows="4" placeholder="DESCRIPTION OF THE PRODUCTS YOU PROVIDE ..." Columns="6" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                        </div>
                          <label>AVERAGE PRICE</label>
                        <div class="form-group">    
                           <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                               <asp:ListItem Value="100">~100</asp:ListItem>
                               <asp:ListItem Value="200">~200</asp:ListItem>
                               <asp:ListItem Value="250">~250</asp:ListItem>
                               <asp:ListItem Value="300">~300</asp:ListItem>
                               <asp:ListItem Value="350">~350</asp:ListItem>
                               <asp:ListItem Value="400">~400</asp:ListItem>
                               <asp:ListItem Value="450">~450</asp:ListItem>
                               <asp:ListItem Value="500">~500</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                         
                       <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="SIGN UP" />
                        </div>
                        <div class="form-group">
                           <asp:Button ID="Button3" runat="server" Text="LOG IN" class="btn btn-info btn-block btn-lg" PostBackUrl="~/venderlog.aspx"  />
                        </div>
                     </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="home.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
                            <br />
                
                            <br />
</asp:Content>
