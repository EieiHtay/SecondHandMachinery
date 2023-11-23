<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="TestReport.aspx.cs" Inherits="Admin_TestReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <label for="exampleFormControlInput1" class="form-label">Password</label>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"  ReportSourceID="CRYSTALREPORTSOURCE1" HasRefreshButton="True" ToolPanelView="None" /> 
    <CR:CrystalReportViewer ID="CrystalReportViewer2" runat="server" AutoDataBind="true" ReportSourceID="CRYSTALREPORTSOURCE2" HasRefreshButton="True" ToolPanelView="None" />
    <CR:CrystalReportViewer ID="CrystalReportViewer3" runat="server" AutoDataBind="true" ReportSourceID="CRYSTALREPORTSOURCE3" HasRefreshButton="True" ToolPanelView="None" />
    <CR:CrystalReportViewer ID="CrystalReportViewer4" runat="server" AutoDataBind="true" ReportSourceID="CRYSTALREPORTSOURCE4" HasRefreshButton="True" ToolPanelView="None" />
    <%-- <CR:CRYSTALREPORTSOURCE ID="CRYSTALREPORTSOURCE1" RUNAT="SERVER">
       <REPORT FILENAME="crptAdmin.rpt">
         </REPORT>
         <REPORT FILENAME="crptCategory.rpt">
        </REPORT>
         <REPORT FILENAME="crptOrder.rpt">
        </REPORT>
        <REPORT FILENAME="crptProduct.rpt">
        </REPORT>
    </CR:CRYSTALREPORTSOURCE>--%>
    <CR:CrystalReportSource ID="CRYSTALREPORTSOURCE1" runat="server">
        <REPORT FILENAME="crptAdmin.rpt">
         </REPORT>
    </CR:CrystalReportSource>
     <CR:CRYSTALREPORTSOURCE ID="CRYSTALREPORTSOURCE2" RUNAT="SERVER">
       <REPORT FILENAME="crptCategory.rpt">
         </REPORT>
         </CR:CRYSTALREPORTSOURCE>
    <CR:CRYSTALREPORTSOURCE ID="CRYSTALREPORTSOURCE3" RUNAT="SERVER">
       <REPORT FILENAME="crptOrder.rpt">
         </REPORT>
         </CR:CRYSTALREPORTSOURCE>
    <CR:CRYSTALREPORTSOURCE ID="CRYSTALREPORTSOURCE4" RUNAT="SERVER">
       <REPORT FILENAME="crptProduct.rpt">
         </REPORT>
         </CR:CRYSTALREPORTSOURCE>
    
</asp:Content>

