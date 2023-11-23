<%@ Page Title="Administration" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Admin_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="f2" runat="server">
        <div class="pcoded-inner-content pt-0">
            <div class="align-align-self-end">

            </div>
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card" style="box-shadow:0 1px 11px 0 rgb(214, 214, 207 );">
                                    <div class="card-header"></div>
                                    <div class="card-block">
                                        <div class="row">
                                            <div class="col-sm-6 col-md-4 col-lg-4">
                                                <h4 class="sub-title" style="font-size:17px;">Category</h4>
                                                <div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
                                                        
                                                        <asp:TextBox ID="TextBox1" runat="server" Visible="true" CssClass="form-control mt-2"></asp:TextBox>
                                                        <br /><br />
                                                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn mb-3 text-white" style="background-color:#1b23bb; width:80px;" OnClick="btnSave_Click" />
                                                         <asp:Button ID="Button2" runat="server" Text="Cancle" CssClass="btn mb-3 text-white" style="background-color:#1b23bb; width:80px;" OnClick="btnSave_Click" />

                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-6 col-md-8 col-lg-8 mobile-inputs">
                                                <h4 class="sub-title" style="font-size:17px;">Category Lists</h4>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <%--<asp:Button ID="btnNew" runat="server" Text="New" class="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnNew_Click"/>
                                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnUpdate_Click" />
                                                        <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnDelete_Click"  />                          
                                                        <asp:Button ID="btnPrint" runat="server" Text="Print" class="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnPrint_Click" /> --%>
                                                    </div>
                                                    <div class="col-md-6">
                                                        Search Category: 
                                                        <div class="pcoded-search">
                                                        <span class="searchbar-toggle">  </span>
                                                        <div class="pcoded-search-box ">
                                                            <asp:TextBox ID="txtSearch1"  AutoPostBack="true" runat="server" autocomplete="Off" ></asp:TextBox>
                                                            <span class="search-icon"><i class="ti-search" aria-hidden="true"></i></span>
                                                        </div>
                                                    </div>
                                                </div>  
                                              </div>

                                                <div class="card-block table-border-style">
                                                    <div class="table-responsive">
                                                        <asp:Repeater ID="rCategory" runat="server">
                                                            <HeaderTemplate>
                                                                <table>
                                                                    <tr>
                                                                        <th>No</th>
                                                                        <th>Category ID</th>
                                                                        <th>Category Name</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </table>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td> <%#Eval("CatID") %> </td>
                                                                    <td> <%#Eval("CatName") %> </td>
                                                                    <td> <%#Eval("CatID") %> </td>
                                                                    <td> <%#Eval("CatID") %> </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                    <td>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Button ID="btnNew" runat="server" Text="New" class="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnNew_Click"/>
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnUpdate_Click" />
                                <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnDelete_Click"  />                          
                                <asp:Button ID="btnPrint" runat="server" Text="Print" class="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnPrint_Click" /> 
                            </div>
                            <div class="col-md-6">
                                Search Category: 
                                <div class="pcoded-search">
                                <span class="searchbar-toggle">  </span>
                                <div class="pcoded-search-box ">
                                    <asp:TextBox ID="txtSearch"  AutoPostBack="true" runat="server" autocomplete="Off" OnTextChanged="txtSearch_TextChanged" ></asp:TextBox>
                                    <span class="search-icon"><i class="ti-search" aria-hidden="true"></i></span>
                                </div>
                            </div>
                        </div>  
                            </div>                    
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" 
                CellPadding="5" CellSpacing="1" DataKeyNames="CatID" Width="700px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
                <Columns>
                    <asp:BoundField DataField="No" HeaderText="No" />
                    <asp:BoundField DataField="CatID" HeaderText="CatID" Visible="False" />
                    <asp:BoundField DataField="CatName" HeaderText="Category Name" />
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">
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
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                <asp:Label ID="title" runat="server" Text="Add New Category" CssClass="align-content-center" style="font-size:25px; font-weight:bold; margin-left:auto; margin-right:auto; display:block;"></asp:Label>
                            </div>
                            <div class="col-md-2"></div>
                        </div>
                          <div class="mb-3 row">
                              <div class="col-md-5">

                                 <asp:Label ID="lblError2" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
                             </div>
                             <div class="col-md-7">
                                 <asp:TextBox ID="txtCatID" runat="server" Visible="true" class="form-control"></asp:TextBox>
                             </div>
                          </div>

                           <div class="mb-3 row">
                             <div class="col-md-5 col-sm-12">
                                 <label for="exampleFormControlInput1" class="form-label">Category Name</label>
                             </div>
                             <div class="col-md-7 col-sm-12">
                                 <asp:TextBox ID="txtCategoryName" runat="server" Visible="true" CssClass="form-control"></asp:TextBox>
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
                    <div>
                    
              
            </div>
        </asp:View>
    </asp:MultiView>
    </form>
</asp:Content>

