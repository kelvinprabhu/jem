<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="about.aspx.vb" Inherits="JEM_MK.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
   
         <br />
                            <br />
                       
         <div class="hero">
		<nav>
			<h2 class="logo2">jem+ <br/> vend<span>er+</span></h2>
			<ul>
				<li><a href="venp.aspx">VENDER PROFILE</a></li>
				
			</ul>
			<a href="itmadven.aspx" class="btn">+ ITEM</a>
			<a href="about.aspx" class="btn">+ PACKAGE</a>
		</nav>
	

	</div>

	    <div class="container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Package Details</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img src="resource/images.png" class="rounded" />
                                       
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>PACKAGE ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>PACKAGE NAME</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=" Name"></asp:TextBox>

                                </div>
                            </div>
                             <div class="col-md-8">
                                <label>PACKAGE AMOUNT</label>
                              <div class="input-group mb-3">
  <span class="input-group-text">₹</span>
  <span class="input-group-text">0.00</span>
  <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Author Name"></asp:TextBox>
</div>
                            </div>
                             <div class="col-md-8">
                                <label>DESCRIPTION</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="description" Columns="8" Rows="4" TextMode="MultiLine"></asp:TextBox>

                                </div>
                            </div>
                              <div class="col-md-8">
                                <label>IMAGE</label>
                                <div class="form-group">
                                  <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                    <div class="text-center">
                                 <asp:Image ID="Image1" runat="server" class="rounded" ImageUrl="#" Height="223px" Width="231px"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />
                            </div>
                        </div>


                    </div>
                </div>

                <a href="homepage.aspx"><< Back to Home</a><br>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [packages]"></asp:SqlDataSource>
                <br>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Package List</h4>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="package_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="package_id" HeaderText="package_id" ReadOnly="True" SortExpression="package_id" />
                                        <asp:BoundField DataField="total_cost" HeaderText="total_cost" SortExpression="total_cost" />
                                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>


	<section class="about">
		<div class="main">
		<img src="resource/jem%20(1).gif" />
			<div class="about-text">
			
				<h5>WE <span> CARE </span></h5>
				<p>"People do not care how much you know until they know how much you care." - Teddy Roosevelt (Paige Arnof-Fenn).</p>
				<button type="button">Let's Talk</button>
			</div>
		</div>
	</section>				
	<br/>
    <br/>
    <br/>
                            <br />
                            <br />
                        
</asp:Content>
