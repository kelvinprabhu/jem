<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="ahome.aspx.vb" Inherits="JEM_MK.ahome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
   
        <div class="hero">
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
				<div class="content">
					
			
			<h1>WELCOME <span>TO jem+ admin</span></h1>
			<h3>"When you have a dream, you've got to grab it and never let go." .....</h3>
			
		</div>
	</div>

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
	<br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
</asp:Content>

