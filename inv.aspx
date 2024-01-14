<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="inv.aspx.vb" Inherits="JEM_MK.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br/>
     <br/>
     <br/>
     <br/>




     <br/>
    <div class="container d-lg-flex">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>EVENT BOOKING</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img src="imgs/writer.png" />
                                       
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                           <div class="col-md-8">
                                <label>BOOKING ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID" Width="1200px"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="GET ID" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>EVENT NAME</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=" Name"></asp:TextBox>

                                </div>
                            </div>
                             <div class="col-md-8">
                                <label>CUSTOMER NAME</label>
                              <div class="input-group mb-3">
  <span class="input-group-text">: )</span>
  
  <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Author Name"></asp:TextBox>
</div>
                            </div>
                             <div class="col-md-8">
                                <label>EVENT PLACE</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="description"></asp:TextBox>

                                </div>
                            </div>
                              <div class="col-md-8">
                                <label>PHONE NO</label>
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">+91</span>
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="description"></asp:TextBox>
                                </div>
                                </div>
</div>

                            </div>
                                 <div class="col-md-8">
                                <label>BOOKING DATE</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="bd" runat="server" TextMode="Date" placeholder="description"></asp:TextBox>

                                </div>
                            </div>
                                 <div class="col-md-8">
                                <label>EVENT DATE</label>
                                <div class="form-group">
                              <asp:TextBox Class="form-control" ID="ed" TextMode="Date" runat="server" placeholder="description"></asp:TextBox>

                                </div>
                            </div>
                         <div class="col-md-8">
                                <label>REF ID</label>
                                <div class="form-group">
                              <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="REF ID"></asp:TextBox>
                                </div>
                            </div>
                        <div class="col-md-8">
                                <label>description</label>
                                <div class="form-group">
                              <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="description" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                           <div class="col-md-8">
                                <label>AMOUNT</label>
                                <div class="form-group">
                              <asp:TextBox Class="form-control" ID="TextBox8" runat="server" placeholder="description" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                      

                        <div class="row">       
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="PROCEED" />
                            </div>
                        </div>
                    </div>
                </div>
          </div>
                <a href="home.aspx"><< Back to Home</a><br>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                <br>
            </div>
       <br/>
     <br/>
     <br/>
     <br/>




     <br/>
</asp:Content>
