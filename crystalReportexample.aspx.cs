using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Globalization;
using CrystalDecisions.Web;
using System.Data;

public partial class crystalReportexample : System.Web.UI.Page
{
    MainDataSetTableAdapters.AdminTableAdapter AdminTbl = new MainDataSetTableAdapters.AdminTableAdapter();
    DataTable Dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dt = AdminTbl.GetData();
        Session["ReportDt"] = Dt;
        Session["ReportName"] = "Admin/crptAdmin.rpt";
        Response.Redirect("ReportTest.aspx");
    }
}