<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="adminup.aspx.vb" Inherits="JEM_MK.adminup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />

 <div class="container" position="fixed-center">
      <div class="row ">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                        
                      
                  <img src="resource/jem%20(1).gif" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>USER REGISTRATION</h3>
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
                        <label>EMAIL ID</label>
                         <div class="form-group">
                          <input type="text" readonly="" class="form-control-plaintext" id="staticEmail" value="email@example.com">    
                         </div>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="EMAIL ID"></asp:TextBox>
                        </div>
                            <label>USER ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="ADMIN ID"></asp:TextBox>
                        </div>
                        <label>PASSWORD</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                            <label> NAME</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="FULL NAME"></asp:TextBox>
                        </div>
                              &nbsp;<label>PHONE NO</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="PHONE NO" TextMode="NUMBER" Width="183px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="REGISTER URSELF" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="login sign up.aspx"><< Back to login</a><br><br>
         </div>
      </div>
   </div>
             <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
</asp:Content>
