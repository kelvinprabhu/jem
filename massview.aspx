<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="massview.aspx.vb" Inherits="JEM_MK.massview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <br/>
    <br/>
           <br/>
    <br/><nav>
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
	<asp:ListView ID="ListView1" runat="server" DataKeyNames="admin_id" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFFFF; color: #284775;">email_id:
                <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                phone_no:
                <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                admin_id:
                <asp:Label ID="admin_idLabel" runat="server" Text='<%# Eval("admin_id") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #999999;">email_id:
                <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                phone_no:
                <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                <br />
                admin_id:
                <asp:Label ID="admin_idLabel1" runat="server" Text='<%# Eval("admin_id") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">email_id:
                <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
                <br />name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />phone_no:
                <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                <br />password:
                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                <br />admin_id:
                <asp:TextBox ID="admin_idTextBox" runat="server" Text='<%# Bind("admin_id") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #E0FFFF; color: #333333;">email_id:
                <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                phone_no:
                <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                admin_id:
                <asp:Label ID="admin_idLabel" runat="server" Text='<%# Eval("admin_id") %>' />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </table>
            <div style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">email_id:
                <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                phone_no:
                <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                admin_id:
                <asp:Label ID="admin_idLabel" runat="server" Text='<%# Eval("admin_id") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
       </asp:ListView>
			  <br/>
	<asp:ListView ID="ListView2" runat="server" DataKeyNames="userid" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFFFF; color: #284775;">userid:
                <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                pass:
                <asp:Label ID="passLabel" runat="server" Text='<%# Eval("pass") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                phno:
                <asp:Label ID="phnoLabel" runat="server" Text='<%# Eval("phno") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #999999;">userid:
                <asp:Label ID="useridLabel1" runat="server" Text='<%# Eval("userid") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                pass:
                <asp:TextBox ID="passTextBox" runat="server" Text='<%# Bind("pass") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                phno:
                <asp:TextBox ID="phnoTextBox" runat="server" Text='<%# Bind("phno") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">userid:
                <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                <br />email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />pass:
                <asp:TextBox ID="passTextBox" runat="server" Text='<%# Bind("pass") %>' />
                <br />name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />phno:
                <asp:TextBox ID="phnoTextBox" runat="server" Text='<%# Bind("phno") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #E0FFFF; color: #333333;">userid:
                <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                pass:
                <asp:Label ID="passLabel" runat="server" Text='<%# Eval("pass") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                phno:
                <asp:Label ID="phnoLabel" runat="server" Text='<%# Eval("phno") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </table>
            <div style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">userid:
                <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                pass:
                <asp:Label ID="passLabel" runat="server" Text='<%# Eval("pass") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                phno:
                <asp:Label ID="phnoLabel" runat="server" Text='<%# Eval("phno") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </td>
        </SelectedItemTemplate>
       </asp:ListView>
    <br/> 
	<asp:ListView ID="ListView3" runat="server" DataKeyNames="adv_id" DataSourceID="SqlDataSource3" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFFFF; color: #284775;">title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                advertiser:
                <asp:Label ID="advertiserLabel" runat="server" Text='<%# Eval("advertiser") %>' />
                <br />
                category:
                <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                <br />
                phone_no:
                <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
                image:
                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                <br />
                adv_id:
                <asp:Label ID="adv_idLabel" runat="server" Text='<%# Eval("adv_id") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #999999;">title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                advertiser:
                <asp:TextBox ID="advertiserTextBox" runat="server" Text='<%# Bind("advertiser") %>' />
                <br />
                category:
                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                <br />
                phone_no:
                <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                image:
                <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                <br />
                adv_id:
                <asp:Label ID="adv_idLabel1" runat="server" Text='<%# Eval("adv_id") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />advertiser:
                <asp:TextBox ID="advertiserTextBox" runat="server" Text='<%# Bind("advertiser") %>' />
                <br />category:
                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                <br />phone_no:
                <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                <br />address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />image:
                <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                <br />adv_id:
                <asp:TextBox ID="adv_idTextBox" runat="server" Text='<%# Bind("adv_id") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #E0FFFF; color: #333333;">title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                advertiser:
                <asp:Label ID="advertiserLabel" runat="server" Text='<%# Eval("advertiser") %>' />
                <br />
                category:
                <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                <br />
                phone_no:
                <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
                image:
                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                <br />
                adv_id:
                <asp:Label ID="adv_idLabel" runat="server" Text='<%# Eval("adv_id") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </table>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                advertiser:
                <asp:Label ID="advertiserLabel" runat="server" Text='<%# Eval("advertiser") %>' />
                <br />
                category:
                <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                <br />
                phone_no:
                <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
                image:
                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                <br />
                adv_id:
                <asp:Label ID="adv_idLabel" runat="server" Text='<%# Eval("adv_id") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </td>
        </SelectedItemTemplate>
       </asp:ListView>
	<br/>
	<asp:ListView ID="ListView4" runat="server" DataKeyNames="booking_id" DataSourceID="SqlDataSource4">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFFFF; color: #284775;">booking_id:
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
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #999999;">booking_id:
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
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">booking_id:
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
                <br />
                refid:
                <asp:TextBox ID="refidTextBox" runat="server" Text='<%# Bind("refid") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #E0FFFF; color: #333333;">booking_id:
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
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </table>
            <div style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">booking_id:
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
            </td>
        </SelectedItemTemplate>
       </asp:ListView>
    <br/>  
	<asp:ListView ID="ListView5" runat="server" DataKeyNames="college_id" DataSourceID="SqlDataSource5">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFFFF; color: #284775;">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                department:
                <asp:Label ID="departmentLabel" runat="server" Text='<%# Eval("department") %>' />
                <br />
                timings:
                <asp:Label ID="timingsLabel" runat="server" Text='<%# Eval("timings") %>' />
                <br />
                phone_no:
                <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                <br />
                college_id:
                <asp:Label ID="college_idLabel" runat="server" Text='<%# Eval("college_id") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #999999;">name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                department:
                <asp:TextBox ID="departmentTextBox" runat="server" Text='<%# Bind("department") %>' />
                <br />
                timings:
                <asp:TextBox ID="timingsTextBox" runat="server" Text='<%# Bind("timings") %>' />
                <br />
                phone_no:
                <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                <br />
                college_id:
                <asp:Label ID="college_idLabel1" runat="server" Text='<%# Eval("college_id") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />department:
                <asp:TextBox ID="departmentTextBox" runat="server" Text='<%# Bind("department") %>' />
                <br />timings:
                <asp:TextBox ID="timingsTextBox" runat="server" Text='<%# Bind("timings") %>' />
                <br />phone_no:
                <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                <br />college_id:
                <asp:TextBox ID="college_idTextBox" runat="server" Text='<%# Bind("college_id") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #E0FFFF; color: #333333;">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                department:
                <asp:Label ID="departmentLabel" runat="server" Text='<%# Eval("department") %>' />
                <br />
                timings:
                <asp:Label ID="timingsLabel" runat="server" Text='<%# Eval("timings") %>' />
                <br />
                phone_no:
                <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                <br />
                college_id:
                <asp:Label ID="college_idLabel" runat="server" Text='<%# Eval("college_id") %>' />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </table>
            <div style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                department:
                <asp:Label ID="departmentLabel" runat="server" Text='<%# Eval("department") %>' />
                <br />
                timings:
                <asp:Label ID="timingsLabel" runat="server" Text='<%# Eval("timings") %>' />
                <br />
                phone_no:
                <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                <br />
                college_id:
                <asp:Label ID="college_idLabel" runat="server" Text='<%# Eval("college_id") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
       </asp:ListView>
			<br/>
       <asp:ListView ID="ListView6" runat="server" DataKeyNames="item_Id" DataSourceID="SqlDataSource6" InsertItemPosition="LastItem">
           <AlternatingItemTemplate>
               <td runat="server" style="background-color: #FFFFFF;color: #284775;">item_Id:
                   <asp:Label ID="item_IdLabel" runat="server" Text='<%# Eval("item_Id") %>' />
                   <br />
                   venderid:
                   <asp:Label ID="venderidLabel" runat="server" Text='<%# Eval("venderid") %>' />
                   <br />
                   itemname:
                   <asp:Label ID="itemnameLabel" runat="server" Text='<%# Eval("itemname") %>' />
                   <br />
                   itemdesc:
                   <asp:Label ID="itemdescLabel" runat="server" Text='<%# Eval("itemdesc") %>' />
                   <br />
                   image:
                   <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                   <br />
                   price:
                   <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                   <br />
                   <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                   <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
               </td>
           </AlternatingItemTemplate>
           <EditItemTemplate>
               <td runat="server" style="background-color: #999999;">item_Id:
                   <asp:Label ID="item_IdLabel1" runat="server" Text='<%# Eval("item_Id") %>' />
                   <br />
                   venderid:
                   <asp:TextBox ID="venderidTextBox" runat="server" Text='<%# Bind("venderid") %>' />
                   <br />
                   itemname:
                   <asp:TextBox ID="itemnameTextBox" runat="server" Text='<%# Bind("itemname") %>' />
                   <br />
                   itemdesc:
                   <asp:TextBox ID="itemdescTextBox" runat="server" Text='<%# Bind("itemdesc") %>' />
                   <br />
                   image:
                   <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                   <br />
                   price:
                   <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                   <br />
                   <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
               </td>
           </EditItemTemplate>
           <EmptyDataTemplate>
               <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                   <tr>
                       <td>No data was returned.</td>
                   </tr>
               </table>
           </EmptyDataTemplate>
           <InsertItemTemplate>
               <td runat="server" style="">item_Id:
                   <asp:TextBox ID="item_IdTextBox" runat="server" Text='<%# Bind("item_Id") %>' />
                   <br />venderid:
                   <asp:TextBox ID="venderidTextBox" runat="server" Text='<%# Bind("venderid") %>' />
                   <br />itemname:
                   <asp:TextBox ID="itemnameTextBox" runat="server" Text='<%# Bind("itemname") %>' />
                   <br />itemdesc:
                   <asp:TextBox ID="itemdescTextBox" runat="server" Text='<%# Bind("itemdesc") %>' />
                   <br />image:
                   <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                   <br />price:
                   <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                   <br />
                   <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
               </td>
           </InsertItemTemplate>
           <ItemTemplate>
               <td runat="server" style="background-color: #E0FFFF;color: #333333;">item_Id:
                   <asp:Label ID="item_IdLabel" runat="server" Text='<%# Eval("item_Id") %>' />
                   <br />
                   venderid:
                   <asp:Label ID="venderidLabel" runat="server" Text='<%# Eval("venderid") %>' />
                   <br />
                   itemname:
                   <asp:Label ID="itemnameLabel" runat="server" Text='<%# Eval("itemname") %>' />
                   <br />
                   itemdesc:
                   <asp:Label ID="itemdescLabel" runat="server" Text='<%# Eval("itemdesc") %>' />
                   <br />
                   image:
                   <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                   <br />
                   price:
                   <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                   <br />
                   <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                   <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
               </td>
           </ItemTemplate>
           <LayoutTemplate>
               <table runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                   <tr id="itemPlaceholderContainer" runat="server">
                       <td id="itemPlaceholder" runat="server"></td>
                   </tr>
               </table>
               <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                   <asp:DataPager ID="DataPager1" runat="server">
                       <Fields>
                           <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                       </Fields>
                   </asp:DataPager>
               </div>
           </LayoutTemplate>
           <SelectedItemTemplate>
               <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">item_Id:
                   <asp:Label ID="item_IdLabel" runat="server" Text='<%# Eval("item_Id") %>' />
                   <br />
                   venderid:
                   <asp:Label ID="venderidLabel" runat="server" Text='<%# Eval("venderid") %>' />
                   <br />
                   itemname:
                   <asp:Label ID="itemnameLabel" runat="server" Text='<%# Eval("itemname") %>' />
                   <br />
                   itemdesc:
                   <asp:Label ID="itemdescLabel" runat="server" Text='<%# Eval("itemdesc") %>' />
                   <br />
                   image:
                   <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                   <br />
                   price:
                   <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                   <br />
                   <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                   <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
               </td>
           </SelectedItemTemplate>
       </asp:ListView>
    <br/>  
       <asp:ListView ID="ListView7" runat="server" DataKeyNames="bill_id" DataSourceID="SqlDataSource7">
           <AlternatingItemTemplate>
               <td runat="server" style="background-color: #FFFFFF;color: #284775;">bill_id:
                   <asp:Label ID="bill_idLabel" runat="server" Text='<%# Eval("bill_id") %>' />
                   <br />
                   crdname:
                   <asp:Label ID="crdnameLabel" runat="server" Text='<%# Eval("crdname") %>' />
                   <br />
                   amount:
                   <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                   <br />
                   phone_no:
                   <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                   <br />
                   eid:
                   <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                   <br />
               </td>
           </AlternatingItemTemplate>
           <EditItemTemplate>
               <td runat="server" style="background-color: #999999;">bill_id:
                   <asp:Label ID="bill_idLabel1" runat="server" Text='<%# Eval("bill_id") %>' />
                   <br />
                   crdname:
                   <asp:TextBox ID="crdnameTextBox" runat="server" Text='<%# Bind("crdname") %>' />
                   <br />
                   amount:
                   <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                   <br />
                   phone_no:
                   <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                   <br />
                   eid:
                   <asp:TextBox ID="eidTextBox" runat="server" Text='<%# Bind("eid") %>' />
                   <br />
                   <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
               </td>
           </EditItemTemplate>
           <EmptyDataTemplate>
               <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                   <tr>
                       <td>No data was returned.</td>
                   </tr>
               </table>
           </EmptyDataTemplate>
           <InsertItemTemplate>
               <td runat="server" style="">bill_id:
                   <asp:TextBox ID="bill_idTextBox" runat="server" Text='<%# Bind("bill_id") %>' />
                   <br />crdname:
                   <asp:TextBox ID="crdnameTextBox" runat="server" Text='<%# Bind("crdname") %>' />
                   <br />amount:
                   <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                   <br />phone_no:
                   <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                   <br />eid:
                   <asp:TextBox ID="eidTextBox" runat="server" Text='<%# Bind("eid") %>' />
                   <br />
                   <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
               </td>
           </InsertItemTemplate>
           <ItemTemplate>
               <td runat="server" style="background-color: #E0FFFF;color: #333333;">bill_id:
                   <asp:Label ID="bill_idLabel" runat="server" Text='<%# Eval("bill_id") %>' />
                   <br />
                   crdname:
                   <asp:Label ID="crdnameLabel" runat="server" Text='<%# Eval("crdname") %>' />
                   <br />
                   amount:
                   <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                   <br />
                   phone_no:
                   <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                   <br />
                   eid:
                   <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                   <br />
               </td>
           </ItemTemplate>
           <LayoutTemplate>
               <table runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                   <tr id="itemPlaceholderContainer" runat="server">
                       <td id="itemPlaceholder" runat="server"></td>
                   </tr>
               </table>
               <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
               </div>
           </LayoutTemplate>
           <SelectedItemTemplate>
               <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">bill_id:
                   <asp:Label ID="bill_idLabel" runat="server" Text='<%# Eval("bill_id") %>' />
                   <br />
                   crdname:
                   <asp:Label ID="crdnameLabel" runat="server" Text='<%# Eval("crdname") %>' />
                   <br />
                   amount:
                   <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                   <br />
                   phone_no:
                   <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                   <br />
                   eid:
                   <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                   <br />
               </td>
           </SelectedItemTemplate>
       </asp:ListView>
       <br/>
       <asp:ListView ID="ListView8" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource8" InsertItemPosition="LastItem">
           <AlternatingItemTemplate>
               <td runat="server" style="background-color: #FFFFFF;color: #284775;">id:
                   <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                   <br />
                   password:
                   <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                   <br />
                   shop_name:
                   <asp:Label ID="shop_nameLabel" runat="server" Text='<%# Eval("shop_name") %>' />
                   <br />
                   address:
                   <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                   <br />
                   phone_no:
                   <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                   <br />
                   product_description:
                   <asp:Label ID="product_descriptionLabel" runat="server" Text='<%# Eval("product_description") %>' />
                   <br />
                   email:
                   <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                   <br />
                   average_price:
                   <asp:Label ID="average_priceLabel" runat="server" Text='<%# Eval("average_price") %>' />
                   <br />
                   <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                   <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
               </td>
           </AlternatingItemTemplate>
           <EditItemTemplate>
               <td runat="server" style="background-color: #999999;">id:
                   <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                   <br />
                   password:
                   <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                   <br />
                   shop_name:
                   <asp:TextBox ID="shop_nameTextBox" runat="server" Text='<%# Bind("shop_name") %>' />
                   <br />
                   address:
                   <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                   <br />
                   phone_no:
                   <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                   <br />
                   product_description:
                   <asp:TextBox ID="product_descriptionTextBox" runat="server" Text='<%# Bind("product_description") %>' />
                   <br />
                   email:
                   <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                   <br />
                   average_price:
                   <asp:TextBox ID="average_priceTextBox" runat="server" Text='<%# Bind("average_price") %>' />
                   <br />
                   <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
               </td>
           </EditItemTemplate>
           <EmptyDataTemplate>
               <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                   <tr>
                       <td>No data was returned.</td>
                   </tr>
               </table>
           </EmptyDataTemplate>
           <InsertItemTemplate>
               <td runat="server" style="">id:
                   <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                   <br />password:
                   <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                   <br />shop_name:
                   <asp:TextBox ID="shop_nameTextBox" runat="server" Text='<%# Bind("shop_name") %>' />
                   <br />address:
                   <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                   <br />phone_no:
                   <asp:TextBox ID="phone_noTextBox" runat="server" Text='<%# Bind("phone_no") %>' />
                   <br />product_description:
                   <asp:TextBox ID="product_descriptionTextBox" runat="server" Text='<%# Bind("product_description") %>' />
                   <br />email:
                   <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                   <br />average_price:
                   <asp:TextBox ID="average_priceTextBox" runat="server" Text='<%# Bind("average_price") %>' />
                   <br />
                   <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
               </td>
           </InsertItemTemplate>
           <ItemTemplate>
               <td runat="server" style="background-color: #E0FFFF;color: #333333;">id:
                   <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                   <br />
                   password:
                   <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                   <br />
                   shop_name:
                   <asp:Label ID="shop_nameLabel" runat="server" Text='<%# Eval("shop_name") %>' />
                   <br />
                   address:
                   <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                   <br />
                   phone_no:
                   <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                   <br />
                   product_description:
                   <asp:Label ID="product_descriptionLabel" runat="server" Text='<%# Eval("product_description") %>' />
                   <br />
                   email:
                   <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                   <br />
                   average_price:
                   <asp:Label ID="average_priceLabel" runat="server" Text='<%# Eval("average_price") %>' />
                   <br />
                   <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                   <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
               </td>
           </ItemTemplate>
           <LayoutTemplate>
               <table runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                   <tr id="itemPlaceholderContainer" runat="server">
                       <td id="itemPlaceholder" runat="server"></td>
                   </tr>
               </table>
               <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                   <asp:DataPager ID="DataPager1" runat="server">
                       <Fields>
                           <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                       </Fields>
                   </asp:DataPager>
               </div>
           </LayoutTemplate>
           <SelectedItemTemplate>
               <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">id:
                   <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                   <br />
                   password:
                   <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                   <br />
                   shop_name:
                   <asp:Label ID="shop_nameLabel" runat="server" Text='<%# Eval("shop_name") %>' />
                   <br />
                   address:
                   <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                   <br />
                   phone_no:
                   <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>' />
                   <br />
                   product_description:
                   <asp:Label ID="product_descriptionLabel" runat="server" Text='<%# Eval("product_description") %>' />
                   <br />
                   email:
                   <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                   <br />
                   average_price:
                   <asp:Label ID="average_priceLabel" runat="server" Text='<%# Eval("average_price") %>' />
                   <br />
                   <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                   <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
               </td>
           </SelectedItemTemplate>
       </asp:ListView>
    <br/>  <br/>
       <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [items] WHERE [item_Id] = @item_Id" InsertCommand="INSERT INTO [items] ([item_Id], [venderid], [itemname], [itemdesc], [image], [price]) VALUES (@item_Id, @venderid, @itemname, @itemdesc, @image, @price)" SelectCommand="SELECT * FROM [items]" UpdateCommand="UPDATE [items] SET [venderid] = @venderid, [itemname] = @itemname, [itemdesc] = @itemdesc, [image] = @image, [price] = @price WHERE [item_Id] = @item_Id">
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
           <UpdateParameters>
               <asp:Parameter Name="venderid" Type="String" />
               <asp:Parameter Name="itemname" Type="String" />
               <asp:Parameter Name="itemdesc" Type="String" />
               <asp:Parameter Name="image" Type="String" />
               <asp:Parameter Name="price" Type="String" />
               <asp:Parameter Name="item_Id" Type="String" />
           </UpdateParameters>
       </asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [bill]"></asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [vendor] WHERE [id] = @id" InsertCommand="INSERT INTO [vendor] ([id], [password], [shop_name], [address], [phone_no], [product_description], [email], [average_price]) VALUES (@id, @password, @shop_name, @address, @phone_no, @product_description, @email, @average_price)" SelectCommand="SELECT * FROM [vendor]" UpdateCommand="UPDATE [vendor] SET [password] = @password, [shop_name] = @shop_name, [address] = @address, [phone_no] = @phone_no, [product_description] = @product_description, [email] = @email, [average_price] = @average_price WHERE [id] = @id">
           <DeleteParameters>
               <asp:Parameter Name="id" Type="String" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="id" Type="String" />
               <asp:Parameter Name="password" Type="String" />
               <asp:Parameter Name="shop_name" Type="String" />
               <asp:Parameter Name="address" Type="String" />
               <asp:Parameter Name="phone_no" Type="String" />
               <asp:Parameter Name="product_description" Type="String" />
               <asp:Parameter Name="email" Type="String" />
               <asp:Parameter Name="average_price" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="password" Type="String" />
               <asp:Parameter Name="shop_name" Type="String" />
               <asp:Parameter Name="address" Type="String" />
               <asp:Parameter Name="phone_no" Type="String" />
               <asp:Parameter Name="product_description" Type="String" />
               <asp:Parameter Name="email" Type="String" />
               <asp:Parameter Name="average_price" Type="String" />
               <asp:Parameter Name="id" Type="String" />
           </UpdateParameters>
       </asp:SqlDataSource>
    <br/>
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [admin] ORDER BY [admin_id]"></asp:SqlDataSource>
	<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [use]" DeleteCommand="DELETE FROM [use] WHERE [userid] = @userid" InsertCommand="INSERT INTO [use] ([userid], [email], [pass], [name], [phno]) VALUES (@userid, @email, @pass, @name, @phno)" UpdateCommand="UPDATE [use] SET [email] = @email, [pass] = @pass, [name] = @name, [phno] = @phno WHERE [userid] = @userid">
        <DeleteParameters>
            <asp:Parameter Name="userid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="phno" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="phno" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
        </UpdateParameters>
       </asp:SqlDataSource>
	<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [advertisement]" DeleteCommand="DELETE FROM [advertisement] WHERE [adv_id] = @adv_id" InsertCommand="INSERT INTO [advertisement] ([title], [description], [advertiser], [category], [phone_no], [address], [image], [adv_id]) VALUES (@title, @description, @advertiser, @category, @phone_no, @address, @image, @adv_id)" UpdateCommand="UPDATE [advertisement] SET [title] = @title, [description] = @description, [advertiser] = @advertiser, [category] = @category, [phone_no] = @phone_no, [address] = @address, [image] = @image WHERE [adv_id] = @adv_id">
        <DeleteParameters>
            <asp:Parameter Name="adv_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="advertiser" Type="String" />
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="phone_no" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="adv_id" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="advertiser" Type="String" />
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="phone_no" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="adv_id" Type="String" />
        </UpdateParameters>
       </asp:SqlDataSource>
	<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [event]"></asp:SqlDataSource>
	<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [hiring]"></asp:SqlDataSource>
	<section class="about">
		<div class="main">
		<img src="resource/jem%20(1).gif" />
			<div class="about-text">
			
				<h5>WE <span> CARE </span></h5>
				<p>"When you sign your name on the dotted line, it's more than just playing baseball. You have a responsibility to make good decisions and show people how things are supposed to be done.-Tony Gwynn.</p>
				<button type="button">ADD A ADMIN</button>
				</div>
		</div>
	</section>	
</asp:Content>
