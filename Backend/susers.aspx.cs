using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Backend_susers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    void bind()
    {
        GridView1.DataSource = null;
        string strqry = "select * from [Subscribed-users] order by id desc";
        adp = new SqlDataAdapter(strqry, con);
        ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["cn"] = e.CommandArgument.ToString();
        Session["ca"] = e.CommandName;
    }
}