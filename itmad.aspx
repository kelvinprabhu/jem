<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="itmad.aspx.vb" Inherits="JEM_MK.WebForm14" %>
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

    <div class="container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>ITEM +</h4>
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
                            <div class="col-md-4">
                                <label>ITEM ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ITEM ID"></asp:TextBox>
                                        
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>VENDER ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Author Name"></asp:TextBox>

                                </div>

                            <div class="col-md-8">
                                <label>ITEM NAME</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Author Name"></asp:TextBox>

                                </div>
                            </div>
                              <div class="col-md-8">
                                <label>ITEM DESCRIPTION</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Author Name" Columns="8" Rows="4" TextMode="MultiLine"></asp:TextBox>

                                </div>
                            </div>
                               <div class="col-md-8">
                                <label>ITEM AMOUNT</label>
                              <div class="input-group mb-3">
  <span class="input-group-text">₹</span>
  <span class="input-group-text">0.00</span>
  <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Author Name"></asp:TextBox>
</div>
                            </div>
                              <div class="col-md-8">
                                <label>ITEM IMAGE</label>
                                <div class="form-group">
                                  <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                    <div class="text-center">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [items]"></asp:SqlDataSource>
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

                <a href="ven.aspx"><< Back to Home</a><br>
                <br>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>ITEM LIST
                                        </h4>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="item_Id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="item_Id" HeaderText="item_Id" ReadOnly="True" SortExpression="item_Id" />
                                        <asp:BoundField DataField="venderid" HeaderText="venderid" SortExpression="venderid" />
                                        <asp:BoundField DataField="itemname" HeaderText="itemname" SortExpression="itemname" />
                                        <asp:BoundField DataField="itemdesc" HeaderText="itemdesc" SortExpression="itemdesc" />
                                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
        </div>
    </div>

</asp:Content>
