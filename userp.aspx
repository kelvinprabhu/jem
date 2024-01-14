<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="userp.aspx.vb" Inherits="JEM_MK.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
      <br/>
    <br/>  <br/>
    <br/>
      <br/>
    <br/>  <br/>
    <br/>
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                           <span>Account Status - </span>
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label> Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Phone No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                    
                    
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Old Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Email ID" TextMode="Password" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Email ID" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="home.aspx"><< Back to Home</a><br><br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img src="imgs/books1.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>HEY USER</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="WELCOME" ></asp:Label>
                        </center>
                         <asp:ListView ID="ListView1" runat="server" DataKeyNames="booking_id" DataSourceID="SqlDataSource1">
                             <AlternatingItemTemplate>
                                 <li style="background-color: #FAFAD2;color: #284775;">booking_id:
                                     <asp:Label ID="booking_idLabel" runat="server" Text='<%# Eval("booking_id") %>' />
                                     <br />
                                     evt_name:
                                     <asp:Label ID="evt_nameLabel" runat="server" Text='<%# Eval("evt_name") %>' />
                                     <br />
                                     cst_name:
                                     <asp:Label ID="cst_nameLabel" runat="server" Text='<%# Eval("cst_name") %>' />
                                     <br />
                                     booking_date:
                                     <asp:Label ID="booking_dateLabel" runat="server" Text='<%# Eval("booking_date") %>' />
                                     <br />
                                     event_date:
                                     <asp:Label ID="event_dateLabel" runat="server" Text='<%# Eval("event_date") %>' />
                                     <br />
                                     phone_no:
                                     <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                                     <br />
                                     event_place:
                                     <asp:Label ID="event_placeLabel" runat="server" Text='<%# Eval("event_place") %>' />
                                     <br />
                                     userid:
                                     <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                                     <br />
                                     refid:
                                     <asp:Label ID="refidLabel" runat="server" Text='<%# Eval("refid") %>' />
                                     <br />
                                     <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                 </li>
                             </AlternatingItemTemplate>
                             <EditItemTemplate>
                                 <li style="background-color: #FFCC66;color: #000080;">booking_id:
                                     <asp:Label ID="booking_idLabel1" runat="server" Text='<%# Eval("booking_id") %>' />
                                     <br />
                                     evt_name:
                                     <asp:TextBox ID="evt_nameTextBox" runat="server" Text='<%# Bind("evt_name") %>' />
                                     <br />
                                     cst_name:
                                     <asp:TextBox ID="cst_nameTextBox" runat="server" Text='<%# Bind("cst_name") %>' />
                                     <br />
                                     booking_date:
                                     <asp:TextBox ID="booking_dateTextBox" runat="server" Text='<%# Bind("booking_date") %>' />
                                     <br />
                                     event_date:
                                     <asp:TextBox ID="event_dateTextBox" runat="server" Text='<%# Bind("event_date") %>' />
                                     <br />
                                     phone_no:
                                     <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                                     <br />
                                     event_place:
                                     <asp:TextBox ID="event_placeTextBox" runat="server" Text='<%# Bind("event_place") %>' />
                                     <br />
                                     userid:
                                     <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                                     <br />
                                     refid:
                                     <asp:TextBox ID="refidTextBox" runat="server" Text='<%# Bind("refid") %>' />
                                     <br />
                                     <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                 </li>
                             </EditItemTemplate>
                             <EmptyDataTemplate>
                                 No data was returned.
                             </EmptyDataTemplate>
                             <InsertItemTemplate>
                                 <li style="">booking_id:
                                     <asp:TextBox ID="booking_idTextBox" runat="server" Text='<%# Bind("booking_id") %>' />
                                     <br />evt_name:
                                     <asp:TextBox ID="evt_nameTextBox" runat="server" Text='<%# Bind("evt_name") %>' />
                                     <br />cst_name:
                                     <asp:TextBox ID="cst_nameTextBox" runat="server" Text='<%# Bind("cst_name") %>' />
                                     <br />booking_date:
                                     <asp:TextBox ID="booking_dateTextBox" runat="server" Text='<%# Bind("booking_date") %>' />
                                     <br />event_date:
                                     <asp:TextBox ID="event_dateTextBox" runat="server" Text='<%# Bind("event_date") %>' />
                                     <br />phone_no:
                                     <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                                     <br />event_place:
                                     <asp:TextBox ID="event_placeTextBox" runat="server" Text='<%# Bind("event_place") %>' />
                                     <br />userid:
                                     <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                                     <br />refid:
                                     <asp:TextBox ID="refidTextBox" runat="server" Text='<%# Bind("refid") %>' />
                                     <br />
                                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                 </li>
                             </InsertItemTemplate>
                             <ItemSeparatorTemplate>
<br />
                             </ItemSeparatorTemplate>
                             <ItemTemplate>
                                 <li style="background-color: #FFFBD6;color: #333333;">booking_id:
                                     <asp:Label ID="booking_idLabel" runat="server" Text='<%# Eval("booking_id") %>' />
                                     <br />
                                     evt_name:
                                     <asp:Label ID="evt_nameLabel" runat="server" Text='<%# Eval("evt_name") %>' />
                                     <br />
                                     cst_name:
                                     <asp:Label ID="cst_nameLabel" runat="server" Text='<%# Eval("cst_name") %>' />
                                     <br />
                                     booking_date:
                                     <asp:Label ID="booking_dateLabel" runat="server" Text='<%# Eval("booking_date") %>' />
                                     <br />
                                     event_date:
                                     <asp:Label ID="event_dateLabel" runat="server" Text='<%# Eval("event_date") %>' />
                                     <br />
                                     phone_no:
                                     <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                                     <br />
                                     event_place:
                                     <asp:Label ID="event_placeLabel" runat="server" Text='<%# Eval("event_place") %>' />
                                     <br />
                                     userid:
                                     <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                                     <br />
                                     refid:
                                     <asp:Label ID="refidLabel" runat="server" Text='<%# Eval("refid") %>' />
                                     <br />
                                     <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                 </li>
                             </ItemTemplate>
                             <LayoutTemplate>
                                 <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                     <li runat="server" id="itemPlaceholder" />
                                 </ul>
                                 <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                     <asp:DataPager ID="DataPager1" runat="server">
                                         <Fields>
                                             <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                         </Fields>
                                     </asp:DataPager>
                                 </div>
                             </LayoutTemplate>
                             <SelectedItemTemplate>
                                 <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">booking_id:
                                     <asp:Label ID="booking_idLabel" runat="server" Text='<%# Eval("booking_id") %>' />
                                     <br />
                                     evt_name:
                                     <asp:Label ID="evt_nameLabel" runat="server" Text='<%# Eval("evt_name") %>' />
                                     <br />
                                     cst_name:
                                     <asp:Label ID="cst_nameLabel" runat="server" Text='<%# Eval("cst_name") %>' />
                                     <br />
                                     booking_date:
                                     <asp:Label ID="booking_dateLabel" runat="server" Text='<%# Eval("booking_date") %>' />
                                     <br />
                                     event_date:
                                     <asp:Label ID="event_dateLabel" runat="server" Text='<%# Eval("event_date") %>' />
                                     <br />
                                     phone_no:
                                     <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                                     <br />
                                     event_place:
                                     <asp:Label ID="event_placeLabel" runat="server" Text='<%# Eval("event_place") %>' />
                                     <br />
                                     userid:
                                     <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                                     <br />
                                     refid:
                                     <asp:Label ID="refidLabel" runat="server" Text='<%# Eval("refid") %>' />
                                     <br />
                                     <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="CANCEL BOOKING REPAYMENT BE VERIFIED IN 24 HRS" />
                                 </li>
                             </SelectedItemTemplate>
                         </asp:ListView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [event] WHERE [booking_id] = @booking_id" InsertCommand="INSERT INTO [event] ([booking_id], [evt_name], [cst_name], [booking_date], [event_date], [phone_no], [event_place], [userid], [refid]) VALUES (@booking_id, @evt_name, @cst_name, @booking_date, @event_date, @phone_no, @event_place, @userid, @refid)" SelectCommand="SELECT * FROM [event] WHERE ([userid] = @userid)" UpdateCommand="UPDATE [event] SET [evt_name] = @evt_name, [cst_name] = @cst_name, [booking_date] = @booking_date, [event_date] = @event_date, [phone_no] = @phone_no, [event_place] = @event_place, [userid] = @userid, [refid] = @refid WHERE [booking_id] = @booking_id">
                             <DeleteParameters>
                                 <asp:Parameter Name="booking_id" Type="String" />
                             </DeleteParameters>
                             <InsertParameters>
                                 <asp:Parameter Name="booking_id" Type="String" />
                                 <asp:Parameter Name="evt_name" Type="String" />
                                 <asp:Parameter Name="cst_name" Type="String" />
                                 <asp:Parameter Name="booking_date" Type="String" />
                                 <asp:Parameter Name="event_date" Type="String" />
                                 <asp:Parameter Name="phone_no" Type="String" />
                                 <asp:Parameter Name="event_place" Type="String" />
                                 <asp:Parameter Name="userid" Type="String" />
                                 <asp:Parameter Name="refid" Type="String" />
                             </InsertParameters>
                             <SelectParameters>
                                 <asp:SessionParameter Name="userid" SessionField="uid" Type="String" />
                             </SelectParameters>
                             <UpdateParameters>
                                 <asp:Parameter Name="evt_name" Type="String" />
                                 <asp:Parameter Name="cst_name" Type="String" />
                                 <asp:Parameter Name="booking_date" Type="String" />
                                 <asp:Parameter Name="event_date" Type="String" />
                                 <asp:Parameter Name="phone_no" Type="String" />
                                 <asp:Parameter Name="event_place" Type="String" />
                                 <asp:Parameter Name="userid" Type="String" />
                                 <asp:Parameter Name="refid" Type="String" />
                                 <asp:Parameter Name="booking_id" Type="String" />
                             </UpdateParameters>
                         </asp:SqlDataSource>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                       
                         
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
      <br/>
    <br/>  <br/>
    <br/>  <br/>
    <br/>  <br/>
    <br/>
</asp:Content>
