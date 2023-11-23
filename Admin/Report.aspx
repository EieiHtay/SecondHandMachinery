<%@ Page Title="Administration" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Report" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1" HasRefreshButton="True" ToolPanelView="None" />    
    <CR:CrystalReportViewer ID="CrystalReportViewer2" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource2" HasRefreshButton="True" ToolPanelView="None" />
    <CR:CrystalReportViewer ID="CrystalReportViewer3" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource3" HasRefreshButton="True" ToolPanelView="None" />
    <CR:CrystalReportViewer ID="CrystalReportViewer4" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource4" HasRefreshButton="True" ToolPanelView="None" />
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
    <CR:CRYSTALREPORTSOURCE ID="CRYSTALREPORTSOURCE1" RUNAT="SERVER">
       <REPORT FILENAME="crptAdmin.rpt">
         </REPORT>
         </CR:CRYSTALREPORTSOURCE>   
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

