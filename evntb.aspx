<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="evntb.aspx.vb" Inherits="JEM_MK.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID" Width="1200px" ReadOnly="True"></asp:TextBox>
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="description" MaxLength="10" TextMode="Number"></asp:TextBox>
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
                              <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="REF ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                               <div class="col-md-8">
                                <label>GRAND TOTAL</label>
                                <div class="form-group">
                              <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="AMOUNT" ReadOnly="True"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button5" runat="server" Text="CLK" />
                                </div>
                            </div>
                            </div>
                      

                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="SERVICES+" PostBackUrl="~/service.aspx" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="CART+" PostBackUrl="~/items.aspx" />
                            </div>
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

            <div class="col-md-8">

                <div class="card">
                    <div class="card-body">



                       
                            <div class="col-4">
                                <center>
                                        <h4>CART LIST
                                        </h4>
                                    </center>
                            </div>
                        </div>

                       


                            <div class="col-4">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [bid], [name], [qty], [price], [tp], [id] FROM [cart] WHERE ([bid] = @bid)" DeleteCommand="DELETE FROM [cart] WHERE [id] = @id" InsertCommand="INSERT INTO [cart] ([bid], [name], [qty], [price], [tp]) VALUES (@bid, @name, @qty, @price, @tp)" UpdateCommand="UPDATE [cart] SET [bid] = @bid, [name] = @name, [qty] = @qty, [price] = @price, [tp] = @tp WHERE [id] = @id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="bid" Type="String" />
                                        <asp:Parameter Name="name" Type="String" />
                                        <asp:Parameter Name="qty" Type="String" />
                                        <asp:Parameter Name="price" Type="String" />
                                        <asp:Parameter Name="tp" Type="Int32" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:SessionParameter Name="bid" SessionField="pack" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="bid" Type="String" />
                                        <asp:Parameter Name="name" Type="String" />
                                        <asp:Parameter Name="qty" Type="String" />
                                        <asp:Parameter Name="price" Type="String" />
                                        <asp:Parameter Name="tp" Type="Int32" />
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id">
                                    <AlternatingItemTemplate>
                                        <tr style="background-color:#FFF8DC;">
                                            <td>
                                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                            </td>
                                            <td>
                                                <asp:Label ID="bidLabel" runat="server" Text='<%# Eval("bid") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="tpLabel" runat="server" Text='<%# Eval("tp") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
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
                                                <asp:TextBox ID="bidTextBox" runat="server" Text='<%# Bind("bid") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="qtyTextBox" runat="server" Text='<%# Bind("qty") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="tpTextBox" runat="server" Text='<%# Bind("tp") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
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
                                                <asp:TextBox ID="bidTextBox" runat="server" Text='<%# Bind("bid") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="qtyTextBox" runat="server" Text='<%# Bind("qty") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="tpTextBox" runat="server" Text='<%# Bind("tp") %>' />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </InsertItemTemplate>
                                    
                                    <ItemTemplate>
                                        <tr style="background-color:#DCDCDC;color: #000000;">
                                            <td>
                                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="remove item" />
                                            </td>
                                            <td>
                                                <asp:Label ID="bidLabel" runat="server" Text='<%# Eval("bid") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="tpLabel" runat="server" Text='<%# Eval("tp") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
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
                                                            <th runat="server">bid</th>
                                                            <th runat="server">name</th>
                                                            <th runat="server">qty</th>
                                                            <th runat="server">price</th>
                                                            <th runat="server">tp</th>
                                                            <th runat="server">id</th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                            <td>
                                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                            </td>
                                            <td>
                                                <asp:Label ID="bidLabel" runat="server" Text='<%# Eval("bid") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="tpLabel" runat="server" Text='<%# Eval("tp") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>

                            </div>
                        </div>
                        </div>
                        
                    
                


            

    
  
</asp:Content>
