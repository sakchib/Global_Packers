using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Adminpanel_youtube : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds;
    string str = System.DateTime.Now.ToString("MMMM") + " " + System.DateTime.Now.Date.Day + "," + " " + System.DateTime.Now.Year;
    string strqry;
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
    void bind()
    {
        GridView1.DataSource = null;
        strqry = "select * from utubevideo order by id desc";
        adp = new SqlDataAdapter(strqry, con);
        ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            session();
            bind();

        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {

            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                int ftop = 0;
                if (CheckBox4.Checked == true)
                {
                    ftop = 1;
                }
                
                strqry = "Insert into utubevideo values(@title,@link,@lastupdatedate,@author,@vtype,@descr,@ctitle,@ftop)";
                    cmd = new SqlCommand(strqry, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@title", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@link", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@lastupdatedate", DateTime.Now);
                    cmd.Parameters.AddWithValue("@author", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@vtype", DropDownList1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@descr", txtdesc.Content);
                    cmd.Parameters.AddWithValue("@ctitle", Session["cleantitle"].ToString());
                    cmd.Parameters.AddWithValue("@ftop", ftop);
                    cmd.ExecuteNonQuery();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    txtdesc.Content = "";
                    CheckBox4.Checked = false;
                    DropDownList1.SelectedIndex = 0;
                    con.Close();
                    bind();
            }
            else
            {

                Response.Write("<script language='javascript'> alert('Please Enter All Fields'); </script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'>alert('" + ex.Message + "'); </script>");
        }
        //catch
        //{
        //    Response.Write("<script language='javascript'> alert('Something Went Wrong ...Please try again.'); </script>");
        //}
        finally
        {
            con.Close();
            con.Dispose();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["cn"] = e.CommandArgument.ToString();
        Session["ca"] = e.CommandName;
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        btnupdate.Visible = true;
        btnsave.Visible = false;
        btncancel.Visible = true;
        strqry = "select * from utubevideo where id='" + Session["cn"].ToString() + "'";
        cmd = new SqlCommand(strqry, con);
        try
        {
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                DropDownList1.SelectedValue = dr[4].ToString();
                txtdesc.Content = dr[6].ToString();
                Session["cleantitle"] = dr[7].ToString();
                int ftop = Convert.ToInt32(dr["ftop"].ToString());
                if (ftop == 1)
                {
                    CheckBox4.Checked = true;
                }
                else
                {
                    CheckBox4.Checked = false;
                }

            }
        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'>alert('" + ex.Message + "'); </script>");
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }
   
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        strqry = "delete from [utubevideo] where id='" + Session["cn"].ToString() + "'";
        cmd = new SqlCommand(strqry, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script language='javascript'> alert('Successfully Deleted !'); </script>");
            bind();
        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
        }
        finally
        {
            con.Close();
            con.Dispose();
            Response.Redirect("youtube.aspx");
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != "" && TextBox1.Text != "")
        {
            strqry = "update utubevideo set titel=@title,linkid=@head,author=@auth,lastupdatedate=@lud,descr=@descr,ftop=@ftop,ctitle=@ctitle where id='" + Session["cn"].ToString() + "'";
            cmd = new SqlCommand(strqry, con);
            try
            {
                con.Open();
                int ftop = 0;
                if (CheckBox4.Checked == true)
                {
                    ftop = 1;
                }
                
                cmd.Parameters.AddWithValue("@title", TextBox1.Text);
                cmd.Parameters.AddWithValue("@head", TextBox2.Text);
                cmd.Parameters.AddWithValue("@auth", TextBox3.Text);
                cmd.Parameters.AddWithValue("@vtype", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@lud", DateTime.Now);
                cmd.Parameters.AddWithValue("@descr", txtdesc.Content);
                cmd.Parameters.AddWithValue("@ctitle", Session["cleantitle"].ToString());
                cmd.Parameters.AddWithValue("@ftop", ftop);
                cmd.ExecuteNonQuery();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                txtdesc.Content = "";
                CheckBox4.Checked = false;
                DropDownList1.SelectedIndex = 0;
                con.Close();
                bind();
                btnupdate.Visible = false;
                btnsave.Visible = true;
                btncancel.Visible = false;
            }
            catch (Exception ex)
            {
                Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
        else
        {
            Response.Write("<script language='javascript'> alert('Fill All Manadatory Fields'); </script>");
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("youtube.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string strTitle = TextBox1.Text;
        strTitle = strTitle.Trim();
        strTitle = strTitle.Trim('-');

        strTitle = strTitle.ToLower();
        char[] chars = @"$%#@!*?;:~`+=()[]{}|\'<>,/^&"".".ToCharArray();
        strTitle = strTitle.Replace(".", "-");
        for (int i = 0; i < chars.Length; i++)
        {
            string strChar = chars.GetValue(i).ToString();
            if (strTitle.Contains(strChar))
            {
                strTitle = strTitle.Replace(strChar, string.Empty);
            }
        }
        strTitle = strTitle.Replace(" ", "-");

        strTitle = strTitle.Replace("--", "-");
        strTitle = strTitle.Replace("---", "-");
        strTitle = strTitle.Replace("----", "-");
        strTitle = strTitle.Replace("-----", "-");
        strTitle = strTitle.Replace("----", "-");
        strTitle = strTitle.Replace("---", "-");
        strTitle = strTitle.Replace("--", "-");
        strTitle = strTitle.Trim();
        strTitle = strTitle.Trim('-');
        Session["cleantitle"] = strTitle;
    }
}