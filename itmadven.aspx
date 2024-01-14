<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="itmadven.aspx.vb" Inherits="JEM_MK.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br/>
     <br/>
<div class="hero">
		<nav>
			<h2 class="logo2">jem+ <br/> vend<span>er+</span></h2>
			<ul>
				<li><a href="venp.aspx">VENDER PROFILE</a></li>
				
			</ul>
			<a href="itmadven.aspx" class="btn">+ ITEM</a>
		</nav>
		
	</div>
     <br/>
     <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Author Name" ReadOnly="True"></asp:TextBox>

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
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Author Name" Rows="6" TextMode="MultiLine"></asp:TextBox>

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
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [items] WHERE ([venderid] = @venderid)" DeleteCommand="DELETE FROM [items] WHERE [item_Id] = @item_Id" InsertCommand="INSERT INTO [items] ([item_Id], [venderid], [itemname], [itemdesc], [image], [price]) VALUES (@item_Id, @venderid, @itemname, @itemdesc, @image, @price)" UpdateCommand="UPDATE [items] SET [venderid] = @venderid, [itemname] = @itemname, [itemdesc] = @itemdesc, [image] = @image, [price] = @price WHERE [item_Id] = @item_Id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="item_Id" Type="String" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="item_Id" Type="String" />
                                                <asp:Parameter Name="venderid" Type="String" />
                                                <asp:Parameter Name="itemname" Type="String" />
                                                <asp:Parameter Name="itemdesc" Type="String" />
                                                <asp:Parameter Name="image" Type="String" />
                                                <asp:Parameter Name="price" Type="String" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:SessionParameter Name="venderid" SessionField="vid" Type="String" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="venderid" Type="String" />
                                                <asp:Parameter Name="itemname" Type="String" />
                                                <asp:Parameter Name="itemdesc" Type="String" />
                                                <asp:Parameter Name="image" Type="String" />
                                                <asp:Parameter Name="price" Type="String" />
                                                <asp:Parameter Name="item_Id" Type="String" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
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
                                <asp:ListView ID="ListView1" runat="server" DataKeyNames="item_Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                                    <AlternatingItemTemplate>
                                        <tr style="background-color:#FFF8DC;">
                                            <td>
                                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                            </td>
                                            <td>
                                                <asp:Label ID="item_IdLabel" runat="server" Text='<%# Eval("item_Id") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="venderidLabel" runat="server" Text='<%# Eval("venderid") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="itemnameLabel" runat="server" Text='<%# Eval("itemname") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="itemdescLabel" runat="server" Text='<%# Eval("itemdesc") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <tr style="background-color:#008A8C;color: #FFFFFF;">
                                            <td>
                                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                            </td>
                                            <td>
                                                <asp:Label ID="item_IdLabel1" runat="server" Text='<%# Eval("item_Id") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="venderidTextBox" runat="server" Text='<%# Bind("venderid") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="itemnameTextBox" runat="server" Text='<%# Bind("itemname") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="itemdescTextBox" runat="server" Text='<%# Bind("itemdesc") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            </td>
                                        </tr>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                            <tr>
                                                <td>No data was returned.</td>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="item_IdTextBox" runat="server" Text='<%# Bind("item_Id") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="venderidTextBox" runat="server" Text='<%# Bind("venderid") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="itemnameTextBox" runat="server" Text='<%# Bind("itemname") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="itemdescTextBox" runat="server" Text='<%# Bind("itemdesc") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            </td>
                                        </tr>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <tr style="background-color:#DCDCDC;color: #000000;">
                                            <td>
                                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                            </td>
                                            <td>
                                                <asp:Label ID="item_IdLabel" runat="server" Text='<%# Eval("item_Id") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="venderidLabel" runat="server" Text='<%# Eval("venderid") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="itemnameLabel" runat="server" Text='<%# Eval("itemname") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="itemdescLabel" runat="server" Text='<%# Eval("itemdesc") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server">
                                            <tr runat="server">
                                                <td runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                            <th runat="server"></th>
                                                            <th runat="server">item_Id</th>
                                                            <th runat="server">venderid</th>
                                                            <th runat="server">itemname</th>
                                                            <th runat="server">itemdesc</th>
                                                            <th runat="server">image</th>
                                                            <th runat="server">price</th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                                    <asp:DataPager ID="DataPager1" runat="server">
                                                        <Fields>
                                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                        </Fields>
                                                    </asp:DataPager>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                            <td>
                                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                            </td>
                                            <td>
                                                <asp:Label ID="item_IdLabel" runat="server" Text='<%# Eval("item_Id") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="venderidLabel" runat="server" Text='<%# Eval("venderid") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="itemnameLabel" runat="server" Text='<%# Eval("itemname") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="itemdescLabel" runat="server" Text='<%# Eval("itemdesc") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView> 
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>
          </div>
    <br/>
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
</asp:Content>
