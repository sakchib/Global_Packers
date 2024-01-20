using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Adminpanel_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    string strqry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
        

            strqry = "Select * from adminlogin where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            
            cmd = new SqlCommand(strqry, con);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                Session["uid"] = TextBox1.Text;
                Session["pwd"] = TextBox2.Text;
                Response.Redirect("Adminindex.aspx");
            }
            else
            {
                //Label1.Visible = true;
                //Label1.Text = "Invalid UserName Or Password";
                Response.Write("<script language='javascript'> alert('Invalid UserName Or Password'); </script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox1.Focus();
    }
}