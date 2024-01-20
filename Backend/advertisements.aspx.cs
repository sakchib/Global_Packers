using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Backend_advertisements : System.Web.UI.Page
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
        strqry = "select * from adgallery order by id desc";
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
    void uploadbpic()
    {
        if (FileUpload2.HasFile)
        {
            Guid gd = Guid.NewGuid();
            string strguid = gd.ToString();
            strguid = strguid.Substring(0, 5);
            bool fileok = false;
            string strdir = Server.MapPath("~/Ad-Pics/");
            if (FileUpload2.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload2.FileName).ToLower();
                string[] allowedExtensions = { ".jpg", ".gif", ".jpeg", ".bmp", ".png", ".tiff", };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (string.Compare(fileExtension, allowedExtensions[i], true) == 0)
                    {
                        fileok = true;
                    }
                }
                if (fileok == true)
                {
                    string strpath1 = strdir + FileUpload2.FileName;
                    FileUpload2.SaveAs(strpath1);

                }
            }
        }
    }
    public static bool IsValidImageDimention(HttpPostedFile postedFile, int specifiedWidth, int specifiedHeight)
    {

        using (System.Drawing.Bitmap NewBitMap = new System.Drawing.Bitmap(postedFile.InputStream, false))
        {

            if (NewBitMap.Height <= specifiedHeight && NewBitMap.Width <= specifiedWidth)
            {

                return true;
            }

            else
            {

                return false;
            }

        }

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {

            if (TextBox1.Text != "" && FileUpload2.HasFile)
            {
                strqry = "Insert into adgallery values(@title,@fname,@date)";
                cmd = new SqlCommand(strqry, con);
                con.Open();
                cmd.Parameters.AddWithValue("@title", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@fname", FileUpload2.FileName);
                cmd.Parameters.AddWithValue("@date", DateTime.Now);
                cmd.ExecuteNonQuery();
                uploadbpic();
                TextBox1.Text = "";
                con.Close();
                bind();
            }
            else
            {

                Response.Write("<script language='javascript'> alert('Please Enter All Fields'); </script>");
            }
        }
        catch
        {
            Response.Write("<script language='javascript'> alert('Something Went Wrong ...Please try again.'); </script>");
        }
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
        strqry = "select * from adgallery where id='" + Session["cn"].ToString() + "'";
        cmd = new SqlCommand(strqry, con);
        try
        {
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                TextBox1.Text = dr[1].ToString();
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
        strqry = "delete from [adgallery] where id='" + Session["cn"].ToString() + "'";
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
            Response.Redirect("advertisements.aspx");
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {

            try
            {
                if (FileUpload2.HasFile)
                {
                    strqry = "update adgallery set titel=@title,date=@lud,fname=@fnm where id='" + Session["cn"].ToString() + "'";
                    cmd = new SqlCommand(strqry, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@title", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@lud", DateTime.Now);
                    cmd.Parameters.AddWithValue("@fnm", FileUpload2.FileName);
                    cmd.ExecuteNonQuery();
                    uploadbpic();
                    TextBox1.Text = "";
                    con.Close();
                }
                else
                {
                    strqry = "update adgallery set titel=@title,date=@lud where id='" + Session["cn"].ToString() + "'";
                    cmd = new SqlCommand(strqry, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@title", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@lud", DateTime.Now);
                    cmd.ExecuteNonQuery();
                    TextBox1.Text = "";
                    con.Close();
                }

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
        Response.Redirect("photo-news.aspx");
    }

}