using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Index : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    string strqry;
    int st = 1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (ServicesList.SelectedIndex != 0)
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                strqry = "INSERT into Contacts_details(Name,Email,Mobile_no,Services,Details,Edate,Status) VALUES(@Name,@Email,@Mobile_no,@Services,@Details,@Edate,@Status)";
                cmd = new SqlCommand(strqry, con);
                cmd.Parameters.AddWithValue("@Name", Textname.Text);
                cmd.Parameters.AddWithValue("@Email", Textemail.Text);
                cmd.Parameters.AddWithValue("@Mobile_no", Textmobile.Text);
                cmd.Parameters.AddWithValue("@Services", ServicesList.Text);
                cmd.Parameters.AddWithValue("@Details", Message.Text);
                cmd.Parameters.AddWithValue("@Edate", DateTime.Now.ToString());
                cmd.Parameters.AddWithValue("@Status", st);

                cmd.ExecuteNonQuery();

                Response.Write("<script language='javascript'> alert('Message Sent Successfully.'); </script>");
            }
            else
            {
                Response.Write("<script language='javascript'> alert('! SELECT SERVICE'); </script>");

            }


        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
        }
        finally
        {
            Textname.Text = "";
            Textemail.Text = "";
            Textmobile.Text = "";
            ServicesList.Text = "";
            Message.Text = "";
            con.Close();
        }
    

    }
}