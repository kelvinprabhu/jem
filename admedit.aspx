<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="admedit.aspx.vb" Inherits="JEM_MK.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
     <br/>
<nav>
			<h2 class="logo2">jem+ <br/> ADM<span>IN+</span></h2>
			<ul>
				<li><a href="ahome.aspx"> HOME </a></li>
							<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            MASTER EDIT
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="admedit.aspx">ADMIN EDIT</a></li>
            <li><a class="dropdown-item" href="packedit.aspx">PACKAGES EDIT</a></li>
            <li><a class="dropdown-item" href="itmad.aspx">ITEM EDIT</a></li> 
			 
          </ul>
        </li>
				
				<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            MASTER VIEWS
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li><a class="dropdown-item" href="massview.aspx">PROFILE VIEWS</a></li>
            <li><a class="dropdown-item" href="feed.aspx">FEEDBACK VIEW</a></li>
      
          </ul>
        </li>
				
			</ul>
			<a href="rep.aspx" class="btn">REPORT</a>
		</nav>
     <br/>
     <br/>


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>ADMIN DETAILS</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="resource/images.png" />
                                       
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
                                <label>ADMIN ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-8">
                                <label>NAME</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=" Name"></asp:TextBox>

                                </div>
                            </div>
                              <div class="col-md-8">
                                <label>EMAIL ID</label>
                                <div class="form-group">
                                    <div class="input-group mb-3">
  
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="@email.com" ></asp:TextBox>
                                        <span class="input-group-text" id="basic-addon2">@example.com</span>
</div>
                                </div>
                            </div>
                             <div class="col-md-8">
                                <label>PHONE NO</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="description"></asp:TextBox>

                                </div>
                            </div>
                           <div class="col-md-8">
                                <label>PASSWORD</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="password"></asp:TextBox>

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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [admin] ORDER BY [admin_id]"></asp:SqlDataSource>
                
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="admin_id" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="phone_no" HeaderText="phone_no" SortExpression="phone_no" />
                                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                        <asp:BoundField DataField="admin_id" HeaderText="admin_id" ReadOnly="True" SortExpression="admin_id" />
                                    </Columns>
                                
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>
</asp:Content>

