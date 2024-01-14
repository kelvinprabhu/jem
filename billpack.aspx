<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="billpack.aspx.vb" Inherits="JEM_MK.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br/>
    <br/>
 <section style="background-color: #b200ffff;">
  <div class="container py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-9 col-lg-7 col-xl-5">
        <div class="card">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-forms/img1.webp"
            class="card-img-top" alt="Black Chair" />
          <div class="card-body">
            <div class="card-title d-flex justify-content-between mb-0">
              <p class="text-muted mb-0">AT UR SERVICE</p>
              <p class="mb-0">24 X 7</p>
            </div>
          </div>
          <div class="rounded-bottom" style="background-color: #eee;">
            <div class="card-body">
              <p class="mb-4">Your payment details</p>

              <div class="form-outline mb-3">
                <input type="text" id="formControlLgXM8" class="form-control"
                  placeholder="1234 5678 1234 5678" />
                <label class="form-label" for="formControlLgXM8">Card Number</label>
              </div>

              <div class="row mb-3">
                <div class="col-6">
                  <div class="form-outline">
                    <input type="password" id="formControlLgExpk8" class="form-control"
                      placeholder="MM/YYYY" />
                    <label class="form-label" for="formControlLgExpk8">Expire</label>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-outline">
                    <input type="password" id="formControlLgcvv8" class="form-control" placeholder="Cvv" />
                    <label class="form-label" for="formControlLgcvv8">Cvv</label>
                  </div>
                    </div>
                    <div class="col-6">
                    <div class="form-outline mb-3">
               <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                <label class="form-label" for="formControlLgXM8">Billing id</label>
              </div>
                        </div>
                    <div class="col-6">
                          <div class="form-outline mb-3">
               <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                <label class="form-label" for="formControlLgXM8">ref id</label>
              </div>
                        </div>
                  <div class="col-6">
                          <div class="form-outline mb-3">
               <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                <label class="form-label" for="formControlLgXM8">Customer ID</label>
              </div>
                        </div>
                    <div class="col-6">
                          <div class="form-outline mb-3">
               <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                <label class="form-label" for="formControlLgXM8">Amount</label>
              </div>
                        </div>
                    <div class="col-6">
                          <div class="form-outline mb-3">
               <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
                <label class="form-label" for="formControlLgXM8">Phone no</label>
              </div>
                </div>
              </div>

           <asp:Button ID="Button1" runat="server" Text="PLACE ORDER" class="btn btn-info btn-block"  />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>  
    




    <br/>
    <br/>
    <br/>
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
