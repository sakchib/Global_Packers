using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.HtmlControls;

public partial class gallery : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    string strqry;
    protected void Page_Load(object sender, EventArgs e)
    {
        readImages();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        readImages();

    }
    public void readImages()
    {
        string strqry = "SELECT * FROM Pic_gallery order by id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(strqry, con);
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string hsstrqry = "SELECT * FROM Pic_gallery where Service ='hs' order by id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(hsstrqry, con);
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string hsstrqry = "SELECT * FROM Pic_gallery where Service ='os' order by id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(hsstrqry, con);
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string hsstrqry = "SELECT * FROM Pic_gallery where Service ='ps' order by id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(hsstrqry, con);
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string hsstrqry = "SELECT * FROM Pic_gallery where Service ='lu' order by id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(hsstrqry, con);
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string hsstrqry = "SELECT * FROM Pic_gallery where Service ='ct' order by id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(hsstrqry, con);
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string hsstrqry = "SELECT * FROM Pic_gallery where Service ='wh' order by id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(hsstrqry, con);
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
 
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        string strqry = "SELECT * FROM Pic_gallery order by id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(strqry, con);
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}