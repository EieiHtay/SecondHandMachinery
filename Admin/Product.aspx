<%@ Page Title="Administration" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="f3" runat="server">
       <!-- Section: Design Block -->
<section class="text-center">
  <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table>
        <tr>
            <td>
                <asp:Label ID="lblError1" runat="server" ForeColor="Red" Font-Bold="True" 
                    Font-Size="10pt"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <div class="row">
                    <div class="col-md-3 col-sm-12">
                        <asp:Button ID="btnNew" runat="server" Text="New" CssClass="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnNew_Click"  />               
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnUpdate_Click" />               
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnDelete_Click"  />
                        <asp:Button ID="btnAllow" runat="server" Text="Allow" CssClass="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnAllow_Click"  />
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-2">
                                Search Type : 
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlSearchType" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSearchType_SelectedIndexChanged" >
                                    <asp:ListItem>ProductName</asp:ListItem>
                                    <asp:ListItem>CategoryName</asp:ListItem>
                                    <asp:ListItem>Price</asp:ListItem>
                                    <asp:ListItem>Quantity</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <div class="pcoded-search" style="display:inline;">
                                <span class="searchbar-toggle">  </span>
                                <div class="pcoded-search-box ">
                                    <asp:TextBox ID="txtSearch" CssClass="form-control"  AutoPostBack="true" runat="server" autocomplete="Off" OnTextChanged="txtSearch_TextChanged" ></asp:TextBox>
                                    <span class="search-icon"><i class="ti-search" aria-hidden="true"></i></span>
                                 </div>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <asp:TextBox ID="txtLoad" runat="server" Visible="False"></asp:TextBox>
                                <asp:Button ID="btnPrint" runat="server" Text="Print" CssClass="btn" style="background-color:#1b23bb; color:#fff; width:70px;" />
                            </div>
                        </div>
                    </div>
                </div>
                
            </td>
        </tr>
        <tr>
            <td>
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" 
                        CellPadding="5" CellSpacing="1" DataKeyNames="ProID" Width="900px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                        <Columns>
                            <asp:BoundField DataField="No" HeaderText="No" />
                            <asp:BoundField DataField="ProID" HeaderText="ProID" />
                            <asp:BoundField DataField="ProName" HeaderText="Product Name" />
                            <asp:BoundField DataField="CatID" HeaderText="CatID" />
                            <asp:BoundField DataField="CatName" HeaderText="Category Name" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                            <asp:BoundField DataField="Description" HeaderText="Description" />
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="imgProduct" runat="server" Height="50" ImageUrl='<%#Bind ("Image") %>' Width="50" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" runat="server" CommandName="Select">
                                    <asp:CheckBox ID="chkSelect" runat="server" />
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle HorizontalAlign="Left" CssClass="table table-primary" />
                    </asp:GridView>
            </td>
        </tr>
        
        </table>
        </asp:View>
        <asp:View ID="View2" runat="server">

            <div class="container-fluid row boxshadow">
                <div class="col-md-6 col-sm-12">
                    <div class="card" style="width: 30rem;">
                      <div class="card-body p-5">
                        <div class="row mb-5">
                            <div class="col-md-3"></div>
                            <div class="col-md-7">
                                <asp:Label ID="title" runat="server" Text="Add New Product" CssClass="align-content-center" style="font-size:25px; font-weight:bold; margin-left:auto; margin-right:auto; display:block;"></asp:Label>
                            </div>
                            <div class="col-md-2"></div>
                        </div>
                          <div class="mb-3 row">
                              <div class="col-md-5">
                                 <asp:Label ID="lblError2" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
                             </div>
                             <div class="col-md-7">
                                 <asp:TextBox ID="txtProductID" runat="server" Visible="true" class="form-control"></asp:TextBox>
                             </div>
                          </div>

                           <div class="mb-3 row">
                             <div class="col-md-5 col-sm-12">
                                 <label for="exampleFormControlInput1" class="form-label">Product Name</label>
                             </div>
                             <div class="col-md-7 col-sm-12">
                                 <asp:TextBox ID="txtProductName" runat="server" Visible="true" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                             </div>
                        </div>

                          <div class="mb-3 row">
                             <div class="col-md-5 col-sm-12">
                                 <label for="exampleFormControlInput1" class="form-label">Category Name</label>
                             </div>
                             <div class="col-md-7 col-sm-12">
                                <asp:DropDownList ID="ddlCategoryName" runat="server" Width="200px" CssClass="form-control"></asp:DropDownList>
                             </div>
                        </div>

                           <div class="mb-3 row">
                             <div class="col-md-5">
                                 <label for="exampleFormControlInput1" class="form-label">Price</label>
                             </div>
                             <div class="col-md-7">
                                 <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox></td>
                             </div>
                         </div>

                           <div class="mb-3 row">
                             <div class="col-md-5">
                                 <label for="exampleFormControlInput1" class="form-label">Quantity</label>
                             </div>
                             <div class="col-md-7">
                                 <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                             </div>
                            </div>

                          <div class="mb-3 row">
                             <div class="col-md-5">
                                 <label for="exampleFormControlInput1" class="form-label">Description</label>
                             </div>
                             <div class="col-md-7">
                                 <asp:TextBox ID="txtDesc" runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                             </div>
                            </div>

                          <div class="mb-3 row">
                             <div class="col-md-5">
                                 <label for="exampleFormControlInput1" class="form-label">Image</label>
                             </div>
                             <div class="col-md-7">
                                 <asp:TextBox ID="txtImage" runat="server" Visible="False" CssClass="form-control"></asp:TextBox>
                                <asp:FileUpload ID="FileUploadImage" runat="server" CssClass="form-control" />
                             </div>
                            </div>

                          <div class="mb-3 row">
                              <div class="col-md-5"></div>
                              <div class="col-md-7">
                                  <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn mb-3 text-white" style="background-color:#1b23bb; width:80px;" OnClick="btnSave_Click" />
                              </div>
                          </div>

                      </div>
                    </div>
                </div>
            </div>
        </asp:View>
    </asp:MultiView>

  <div class="card mx-4 mx-md-5 shadow-5-strong p-5 mt-5" style="
        margin-top: -100px;
        background: hsla(0, 0%, 100%, 0.8);
        backdrop-filter: blur(30px);">
    <div class="card-body py-5 px-md-5">

      <div class="row d-flex justify-content-center">
        <div class="col-lg-12">
          <h2 class="fw-bold mb-5">Product</h2>
          <form>
            <!-- 2 column grid layout with text inputs for the first and last names -->
            <div class="row">
              <div class="col-md-6 mb-4">
                <div class="form-outline row">
                    <div class="col-md-5">Product Name</div>
                    <div class="col-md-7">
                        <input type="text" id="Text3" class="form-control" />
                    </div>
                </div>
              </div>

             <div class="col-md-6 mb-4">
                    <div class="form-outline row">
                        <div class="col-md-5"><label class="form-label" for="form3Example4">Category Name</label></div>
                        <div class="col-md-7">
                            <input type="text" id="Text4" class="form-control" />
                        </div>
                    </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6 mb-4">
                <div class="form-outline row">
                    <div class="col-md-5">Price</div>
                    <div class="col-md-7">
                        <input type="text" id="Text5" class="form-control" />
                    </div>
                </div>
              </div>

             <div class="col-md-6 mb-4">
                    <div class="form-outline row">
                        <div class="col-md-5"><label class="form-label" for="form3Example4">Description</label></div>
                        <div class="col-md-7">
                            <input type="text" id="Text6" class="form-control" />
                        </div>
                    </div>
              </div>
            </div>
           
            <!-- Email input -->
            <div class="form-outline mb-4 row">
              <div class="col-md-3">Image</div>
                        <div class="col-md-9">
                            <input type="text" id="Text1" class="form-control" />
                        </div>
            </div>

            <!-- Password input -->
            <div class="form-outline mb-4">
              <input type="password" id="form3Example4" class="form-control" />
              <label class="form-label" for="form3Example4">Description</label>
            </div>

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">
              Sign up
            </button>

            <!-- Register buttons -->
            <div class="text-center">
              <p>or sign up with:</p>
              <button type="button" class="btn btn-link btn-floating mx-1">
                <i class="fab fa-facebook-f"></i>
              </button>

              <button type="button" class="btn btn-link btn-floating mx-1">
                <i class="fab fa-google"></i>
              </button>

              <button type="button" class="btn btn-link btn-floating mx-1">
                <i class="fab fa-twitter"></i>
              </button>

              <button type="button" class="btn btn-link btn-floating mx-1">
                <i class="fab fa-github"></i>
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Section: Design Block -->
    </form>
</asp:Content>

