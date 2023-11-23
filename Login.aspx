<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="LoginStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="padding:70px;">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card" style="width: 50rem;">
                  <div class="card-body login">
                      <img src="../Images/admin.png" style="width:70px; margin-left:auto;margin-right:auto; display:block;margin-bottom:30px;"/>
                      <h3 class="card-title text-center" style="margin-bottom:20px;">Log In</h3>

                        <div class="mb-5 row" style="margin-bottom:10px;">
                            <div class="col-md-4">
                                    
                            </div>
                            <div class="col-md-8">
                                  <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red"></asp:Label>
                            </div>
                      </div>

                        <div class="mb-5 row" style="margin-bottom:10px;">
                            <div class="col-md-4">
                                    <label for="mail" class="col-sm-2 col-form-label">Email</label>
                            </div>
                            <div class="col-md-8">
                                  <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                      </div>
                        <div class="mb-5 row" style="margin-bottom:10px;">
                          <div class="col-md-4">
                                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                          </div>
                          <div class="col-md-8">
                              <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                          </div>
                      </div>

                      <div class="mb-5 row">
                          <div class="col-md-4"></div>
                          <div class="col-md-8">
                                <asp:Button ID="login" runat="server" Text="Login"  class="btn mr-3" style="background-color:#1b23bb; color:#fff;" OnClick="login_Click" />
                          </div>
                      </div>
                      <div class="text-center" style="margin-top:70px;">
                          <p>Don't have an Account? <span><a href="Signup.aspx">Sign Up</a></span></p>
                      </div>
                  </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</asp:Content>

