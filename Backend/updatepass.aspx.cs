using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Backend_updatepass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds;
    string message = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    
    void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
       int f= check();
       con.Close();
        if (f == 1)
       {
           if (TextBox2.Text == TextBox3.Text)
           {
               if (con.State == ConnectionState.Closed)
               {
                   con.Open();
               }
               string strqry = "update [adminlogin] set [password]='" + TextBox3.Text + "' where [username]='" + Session["uid"].ToString() + "'";
               cmd = new SqlCommand(strqry, con);
               cmd.ExecuteNonQuery();
               message = "javascript: alert('Your Password Updated Successfully !')";
               ScriptManager.RegisterStartupScript(this, this.GetType(), "alertScript", message, true);
               clear();
           }
           else
           {
               message = "javascript: alert('Confirm Password Does not match with New Password ! Try Again ?')";
               ScriptManager.RegisterStartupScript(this, this.GetType(), "alertScript", message, true);
               TextBox2.Text = "";
               TextBox3.Text = "";
           }
       }
        
    }
    public int check()
    {
        string query = "select * from adminlogin where username='" + Session["uid"].ToString() + "'";
        con.Open();
        cmd = new SqlCommand(query, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string oldpass = dr["password"].ToString();
            if (oldpass == TextBox1.Text)
            {
                return 1;
            }
            else
            {
                message = "javascript: alert('Invalid Old Password!')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertScript", message, true);
                clear();
                TextBox1.Focus();
                return 0;
            }
        }
        return 0;
       
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        clear();
    }
}