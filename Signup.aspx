<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Home Session Start -->
    <div class="container-fluid row" id="home">
        <div class="col-md-2"></div>
        <div class="col-md-4" data-aos="fade-down">
                <div class="header-title" style="padding-top:200px;">
                    <img class="img-fluid w-25 h-25" src="../Images/zaygo.png">
                    <img class="img-fluid w-50 h-25" src="../Images/text-logo.png">
                    <h3 class="text-dark" style="line-height:50px;">ပိုတာရောင်း လိုတာဝယ်ဖို့ <br /> အခုပဲ အကောင့်ဖွင့်လိုက်ပါ။</h3>
                </div>
                <div class="header-body" style="flex-item-align:center; padding-top:10px;">
                    <asp:Button ID="login" runat="server" Text="Login"  class="btn mr-3" style="outline:2px solid #1b23bb; color:#1b23bb;" />
                    <asp:Button ID="signup" runat="server" Text="Sign Up"  class="btn" style="outline:2px solid #1b23bb; color:#1b23bb;" />
                  
                </div>
            </div>
        <div class="col-md-6"></div>
        
       <!-- </div> -->
    </div>
  <!-- Home Session End --> 

    <!-- Sign Up Form Session Start -->
    <section class="vh-100 gradient-custom">
  <div class="container-fluid py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Sign Up</h2>
              <p class="text-white-50 mb-5">Please fill your information!</p>
                 <asp:Label ID="lblError1" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
               <div class="form-outline form-white mb-4 row">
                   <div class="col-md-4">
                       <label class="form-label" for="name">UserName</label>
                   </div>
                   <div class="col-md-8">
                       <asp:TextBox ID="txtName" runat="server" class="form-control form-control-lg"></asp:TextBox>
                       <%--<input type="text" id="name" class="form-control form-control-lg" />--%>
                   </div>
               </div>

                 <div class="form-outline form-white mb-4 row">
                   <div class="col-md-4">
                       <label class="form-label" for="phone">Phone</label>
                   </div>
                   <div class="col-md-8">
                       <asp:TextBox ID="txtPhone" runat="server" class="form-control form-control-lg"></asp:TextBox>
                       
                   </div>
               </div>

                 <div class="form-outline form-white mb-4 row">
                   <div class="col-md-4">
                       <label class="form-label" for="txtEmail">Email</label>
                   </div>
                   <div class="col-md-8">
                       <asp:TextBox ID="txtEmail" runat="server" class="form-control form-control-lg"></asp:TextBox>
                       
                   </div>
               </div>

             <div class="form-outline form-white mb-4 row">
                   <div class="col-md-4">
                       <label class="form-label" for="address">Address</label>
                   </div>
                   <div class="col-md-8">
                       <textarea id="txtAddress" class="form-control form-control-lg"></textarea>
                   </div>
               </div>

              <div class="form-outline form-white mb-4 row">
                  <div class="col-md-4">
                      <label class="form-label" for="password">Password</label>
                  </div>
                   <div class="col-md-8">
                       <asp:TextBox ID="txtPassword" runat="server" class="form-control form-control-lg"></asp:TextBox>
                       
                   </div>
              </div>

                <div class="form-outline form-white mb-4 row">
                  <div class="col-md-4">
                      <label class="form-label" for="confirmPassword">Confirm Password</label>
                  </div>
                   <div class="col-md-8">
                       <asp:TextBox ID="txtConfirm" runat="server" class="form-control form-control-lg"></asp:TextBox>
                       
                   </div>
              </div>
                <asp:Button ID="Signup1" runat="server" Text="SignUp" class="btn btn-outline-light btn-lg px-5" OnClick="Signup1_Click" />
              </div>

            <div>
              <p class="mb-0">Already account? <a href="login.aspx" class="text-white-50 fw-bold">Login</a>
              </p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>

    <!-- Sign Up Session End -->
</asp:Content>

