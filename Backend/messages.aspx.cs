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

public partial class Backend_messages : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    string strqry;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            session();
            readMessages();

        }
    }
    void session()
    {
        if (Session.Count > 0)
        {

        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        readMessages();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["cn"] = e.CommandArgument.ToString();
        Session["ca"] = e.CommandName;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        strqry = "delete from Contacts_details where id='" + Session["cn"].ToString() + "'";
        cmd = new SqlCommand(strqry, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script language='javascript'> alert('Successfully Deleted !'); </script>");
            readMessages();
        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
        }
        finally
        {
            con.Close();
            con.Dispose();
            Response.Redirect("messages.aspx");
        }
    }

    public void readMessages()
    {
        string strqry = "SELECT * FROM Contacts_details order by id desc";
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(strqry, con);
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    
}