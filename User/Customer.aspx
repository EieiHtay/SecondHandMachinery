<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage1.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="User_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../LoginStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" style="padding:70px;">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card" style="width: 50rem;">
                  <div class="card-body login">
                      <img src="../Images/admin.png" style="width:70px; margin-left:auto;margin-right:auto; display:block;margin-bottom:30px;"/>
                      <h3 class="card-title text-center" style="margin-bottom:20px;">Sign Up</h3><br />

                      <div class="mb-5 row">
                          <div class="col-md-6">
                                <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red"></asp:Label>
                          </div>
                      </div>

                      <div class="mb-5 row" style="margin-bottom:10px;">
                        <div class="col-md-5">
                                <label for="mail" class="form-label">Customer Name</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtCustomerName" CssClass="form-control" runat="server"  autocomplete="Off"></asp:TextBox>
                        </div>
                      </div>

                      <div class="mb-5 row" style="margin-bottom:10px;">
                          <div class="col-md-5">
                                <label for="inputPassword" class="form-label">Address</label>
                          </div>
                          <div class="col-md-7">
                             <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" autocomplete="Off"></asp:TextBox>
                          </div>
                      </div>

                      <div class="mb-5 row" style="margin-bottom:10px;">
                          <div class="col-md-5">
                                <label for="inputPassword" class="form-label">Phone</label>
                          </div>
                          <div class="col-md-7">
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"  autocomplete="Off"></asp:TextBox>
                          </div>
                      </div>

                      <div class="mb-5 row" style="margin-bottom:10px;">
                          <div class="col-md-5">
                                <label for="inputPassword" class="form-label">Email</label>
                          </div>
                          <div class="col-md-7">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" autocomplete="Off"></asp:TextBox>
                           </div>
                      </div>

                      <div class="mb-5 row" style="margin-bottom:10px;">
                          <div class="col-md-5">
                                <label for="inputPassword" class="form-label">NRC</label>
                          </div>
                          <div class="col-md-7">
                                <asp:TextBox ID="txtNrc" runat="server" CssClass="form-control" autocomplete="Off"></asp:TextBox>
                           </div>
                      </div>

                      <div class="mb-5 row" style="margin-bottom:10px;">
                          <div class="col-md-5">
                                <label for="inputPassword" class="form-label">Password</label>
                          </div>
                          <div class="col-md-7">
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>
                          </div>
                      </div>

                      <div class="mb-5 row" style="margin-bottom:10px;">
                          <div class="col-md-5">
                                <label for="inputPassword" class="form-label">Confirm Password</label>
                          </div>
                          <div class="col-md-7">
                                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                          </div>
                      </div>

                      <div class="mb-5 row" style="margin-bottom:10px;">
                          <div class="col-md-5">
                                <label for="inputPassword" class="form-label">Card Type</label>
                          </div>
                          <div class="col-md-7">
                            <asp:DropDownList ID="ddlCType" runat="server" CssClass="form-control">
                                <asp:ListItem>Visa</asp:ListItem>
                                <asp:ListItem>Master</asp:ListItem>
                            </asp:DropDownList>     
                          </div>
                      </div>

                      <div class="mb-5 row" style="margin-bottom:10px;">
                          <div class="col-md-5">
                                <label for="inputPassword" class="form-label">Account No</label>
                          </div>
                          <div class="col-md-7">
                                <asp:TextBox ID="txtANo" runat="server" CssClass="form-control" autoComplete="off"></asp:TextBox>
                          </div>
                      </div>

                      <div class="mb-5 row">
                          <div class="col-md-4"></div>
                          <div class="col-md-8">
                              <br />
                                <asp:Button ID="signup" runat="server" Text="Sign Up"  class="btn mr-3" style="background-color:#1b23bb; color:#fff;" OnClick="signup_Click" />
                          </div>
                      </div>

                      <div class="text-center" style="margin-top:70px;">
                          <p>Already Account? <span><a href="Login.aspx">Login</a></span></p>
                      </div>
                  </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</asp:Content>

