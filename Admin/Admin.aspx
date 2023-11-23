<%@ Page Title="Administration" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../AdminStyle.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="f1" runat="server">
         <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblError1" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                 <asp:Button ID="btnNew" runat="server" Text="New" CssClass="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnNew_Click"/>
                                 <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnUpdate_Click"/>
                                 <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnDelete_Click"/>
                                 <asp:Button ID="btnPrint" runat="server" Text="Print" CssClass="btn" style="background-color:#1b23bb; color:#fff; width:70px;" OnClick="btnPrint_Click" />
                            </div>
                            <div class="col-md-6 mb-5 ps-2">
                                Search Admin : 
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
                    <td class="auto-style2">
                        <div class="container-fluid">
                            <div>
                                <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="1" DataKeyNames="AdminID" Width="700px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                            <Columns>
                                <asp:BoundField DataField="No" HeaderText="No" />
                                <asp:BoundField DataField="AdminID" HeaderText="AdminID" Visible="False" />
                                <asp:BoundField DataField="AdminName" HeaderText="Admin Name" />
                                <asp:BoundField DataField="Password" HeaderText="Password" Visible="False" />
                                <asp:TemplateField HeaderText="Select"> 
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" runat="server" CommandName="Select"> <asp:CheckBox ID="chkSelect" runat="server" /></asp:LinkButton>
                                        

                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                                    <HeaderStyle HorizontalAlign="Left" CssClass="table table-primary"  />
                        </asp:GridView>
                            </div>
                        </div>
                        
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
                                <asp:Label ID="title" runat="server" Text="Add New Admin" CssClass="align-content-center" style="font-size:25px; font-weight:bold; margin-left:auto; margin-right:auto; display:block;"></asp:Label>
                            </div>
                            <div class="col-md-2"></div>
                        </div>
                          <div class="mb-3 row">
                              <div class="col-md-5">
                                 <asp:Label ID="lblError2" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
                             </div>
                             <div class="col-md-7">
                                 <asp:TextBox ID="txtAdminID" runat="server" Visible="true" class="form-control"></asp:TextBox>
                             </div>
                          </div>

                           <div class="mb-3 row">
                             <div class="col-md-5 col-sm-12">
                                 <label for="exampleFormControlInput1" class="form-label">Admin Name</label>
                             </div>
                             <div class="col-md-7 col-sm-12">
                                 <asp:TextBox ID="txtAdminName" runat="server" Visible="true" CssClass="form-control"></asp:TextBox>
                             </div>
                        </div>

                           <div class="mb-3 row">
                             <div class="col-md-5">
                                 <label for="exampleFormControlInput1" class="form-label">Password</label>
                             </div>
                             <div class="col-md-7">
                                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                             </div>
                         </div>

                           <div class="mb-3 row">
                             <div class="col-md-5">
                                 <label for="exampleFormControlInput1" class="form-label">Confirm Password</label>
                             </div>
                             <div class="col-md-7">
                                 <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
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
    </form>
</asp:Content>

