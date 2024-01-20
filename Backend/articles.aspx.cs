using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
using System.Xml;
using System.Text;


public partial class Adminpanel_articles : System.Web.UI.Page
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
        strqry = "select * from article order by id desc";
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
            
            
        }
    }
    //void uploadbpic()
    //{
    //    if (FileUpload2.HasFile)
    //    {
    //        Guid gd = Guid.NewGuid();
    //        string strguid = gd.ToString();
    //        strguid = strguid.Substring(0, 5);
    //        bool fileok = false;
    //        string strdir = Server.MapPath("~/Banner-Pics/");
    //        if (FileUpload2.HasFile)
    //        {
    //            string fileExtension = System.IO.Path.GetExtension(FileUpload2.FileName).ToLower();
    //            string[] allowedExtensions = { ".jpg", ".gif", ".jpeg", ".bmp", ".png", ".tiff", };
    //            for (int i = 0; i < allowedExtensions.Length; i++)
    //            {
    //                if (string.Compare(fileExtension, allowedExtensions[i], true) == 0)
    //                {
    //                    fileok = true;
    //                }
    //            }
    //            if (fileok == true)
    //            {
    //                string strpath1 = strdir + FileUpload2.FileName;
    //                FileUpload2.SaveAs(strpath1);
                   
    //            }
    //        }
    //    }
    //}
    //public static bool IsValidImageDimention(HttpPostedFile postedFile, int specifiedWidth, int specifiedHeight)
    //{

    //    using (System.Drawing.Bitmap NewBitMap = new System.Drawing.Bitmap(postedFile.InputStream, false))
    //    {

    //        if (NewBitMap.Height <= specifiedHeight && NewBitMap.Width <= specifiedWidth)
    //        {
    //            return true;
    //        }

    //        else
    //        {
    //            return false;
    //        }

    //    }

    //}
  
    //protected void btnupdate_Click(object sender, EventArgs e)
    //{
    //    if (TextBox2.Text != "" && txtdesc.Content != "" && DropDownList1.Text != "Select Category")
    //    {
    //        if (FileUpload2.HasFile)
    //        {
    //            strqry = "update article set category=@cat,title=@head,descriptionshort=@shrtdesc,location=@loc,description=@desc,author=@auth,status=@status,bannerpic=@bpic,cleantitle=@curl,popular=@pop,tops=@tops,ftop=@ftop where id='" + Session["cn"].ToString() + "'";
    //            cmd = new SqlCommand(strqry, con);
    //            try
    //            {
    //                con.Open();
    //                int st = 0;
    //                if (CheckBox1.Checked == true)
    //                {
    //                    st = 1;
    //                }
    //                int pop = 0;
    //                if (CheckBox2.Checked == true)
    //                {
    //                    pop = 1;
    //                }
    //                int tops = 0;
    //                if (CheckBox3.Checked == true)
    //                {
    //                    tops = 1;
    //                }
    //                int ftops = 0;
    //                if (CheckBox4.Checked == true)
    //                {
    //                    ftops = 1;
    //                }
    //                cmd.Parameters.AddWithValue("@cat",DropDownList1.SelectedItem.Text);
    //                cmd.Parameters.AddWithValue("@head",TextBox2.Text);
    //                cmd.Parameters.AddWithValue("@shrtdesc",txtdesshort.Text);
    //                cmd.Parameters.AddWithValue("@loc",TextBox1.Text);
    //                cmd.Parameters.AddWithValue("@desc",txtdesc.Content);
    //                cmd.Parameters.AddWithValue("@auth",txtauthor.Text);
    //                cmd.Parameters.AddWithValue("@status",st);
    //                cmd.Parameters.AddWithValue("@bpic", FileUpload2.FileName);
    //                cmd.Parameters.AddWithValue("@curl", Session["cleantitle"].ToString());
    //                cmd.Parameters.AddWithValue("@pop",pop);
    //                cmd.Parameters.AddWithValue("@tops",tops);
    //                cmd.Parameters.AddWithValue("@ftop", ftops);
    //                uploadbpic();
    //                cmd.ExecuteNonQuery();
    //                bind();
    //                TextBox2.Text = "";
    //                txtdesc.Content = "";
    //                TextBox1.Text = "";
    //                txtdesshort.Text = "";
    //                //TextBox3.Text = "";
    //                DropDownList1.SelectedIndex = 0;
    //                //TextBox3.Text = "";
    //                CheckBox1.Checked = false;
    //                CheckBox2.Checked = false;
    //                CheckBox3.Checked = false;
    //                CheckBox4.Checked = false;
    //                btnupdate.Visible = false;
    //                btnsave.Visible = true;
    //                btncancel.Visible = false;
    //            }
    //            catch (Exception ex)
    //            {
    //                Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
    //            }
    //            finally
    //            {
    //                con.Close();
    //                con.Dispose();
    //            }
    //        }
    //        else
    //        {
    //            strqry = "update article set category=@cat,title=@head,descriptionshort=@shrtdesc,location=@loc,description=@desc,author=@auth,status=@status,cleantitle=@curl,popular=@pop,tops=@tops,ftop=@ftop where id='" + Session["cn"].ToString() + "'";
    //            cmd = new SqlCommand(strqry, con);
    //            try
    //            {
    //                con.Open();
    //                int st = 0;
    //                if (CheckBox1.Checked == true)
    //                {
    //                    st = 1;
    //                }
    //                int pop = 0;
    //                if (CheckBox2.Checked == true)
    //                {
    //                    pop = 1;
    //                }
    //                int tops = 0;
    //                if (CheckBox3.Checked == true)
    //                {
    //                    tops = 1;
    //                }
    //                int ftops = 0;
    //                if (CheckBox4.Checked == true)
    //                {
    //                    ftops = 1;
    //                }
    //                cmd.Parameters.AddWithValue("@cat", DropDownList1.SelectedItem.Text);
    //                cmd.Parameters.AddWithValue("@head", TextBox2.Text);
    //                cmd.Parameters.AddWithValue("@shrtdesc", txtdesshort.Text);
    //                cmd.Parameters.AddWithValue("@loc", TextBox1.Text);
    //                cmd.Parameters.AddWithValue("@desc", txtdesc.Content);
    //                cmd.Parameters.AddWithValue("@auth", txtauthor.Text);
    //                cmd.Parameters.AddWithValue("@status", st);
    //                cmd.Parameters.AddWithValue("@curl", Session["cleantitle"].ToString());
    //                cmd.Parameters.AddWithValue("@pop", pop);
    //                cmd.Parameters.AddWithValue("@tops", tops);
    //                cmd.Parameters.AddWithValue("@ftop", ftops);
    //                cmd.ExecuteNonQuery();
    //                bind();
    //                TextBox2.Text = "";
    //                txtdesc.Content = "";
    //                TextBox1.Text = "";
    //                txtdesshort.Text = "";
    //                //TextBox3.Text = "";
    //                DropDownList1.SelectedIndex = 0;
    //                CheckBox1.Checked = false;
    //                CheckBox2.Checked = false;
    //                CheckBox3.Checked = false;
    //                CheckBox4.Checked = false;
    //                btnupdate.Visible = false;
    //                btnsave.Visible = true;
    //                btncancel.Visible = false;
    //            }
    //            catch (Exception ex)
    //            {
    //                Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
    //            }
    //            finally
    //            {
    //                con.Close();
    //                con.Dispose();
    //            }
    //        }
            
    //    }
    //    else
    //    {
    //        Response.Write("<script language='javascript'> alert('Fill all Manadatory Fields and Select the News Category'); </script>");
    //    }
    //}
    //protected void btnsave_Click(object sender, EventArgs e)
    //    {
    //    try
    //    {
    //        int st = 0;
    //        int pop = 0;
    //        String bpic = "gallery.jpg";
    //        if (CheckBox1.Checked == true)
    //        {
    //            st = 1;
    //        }
    //        if (CheckBox2.Checked == true)
    //        {
    //            pop = 1;
    //        }
    //        int tops = 0;
    //        if (CheckBox3.Checked == true)
    //        {
    //            tops = 1;
    //        }
    //        int ftops = 0;
    //        if (CheckBox4.Checked == true)
    //        {
    //            ftops = 1;
    //        }
    //        if (TextBox2.Text != "" && txtdesc.Content != "" && DropDownList1.Text != "Select Category")
    //        {

    //            if (FileUpload2.HasFile)
    //            {

    //                strqry = "Insert into article([category],[title],[descriptionshort],[location],[description],[lastupdatedate],[author],[status],[bannerpic],[cleantitle],[popular],[tops],[ftop]) values(@cat,@head,@shrtdesc,@loc,@desc,@date,@auth,@status,@bpic,@curl,@pop,@tops,@ftop)";
    //                cmd = new SqlCommand(strqry, con);
    //                con.Open();
    //                cmd.Parameters.AddWithValue("@cat", DropDownList1.SelectedItem.Text);
    //                cmd.Parameters.AddWithValue("@head", TextBox2.Text);
    //                cmd.Parameters.AddWithValue("@shrtdesc", txtdesshort.Text);
    //                cmd.Parameters.AddWithValue("@loc", TextBox1.Text);
    //                cmd.Parameters.AddWithValue("@desc", txtdesc.Content);
    //                cmd.Parameters.AddWithValue("@date", DateTime.Now);
    //                cmd.Parameters.AddWithValue("@auth", txtauthor.Text);
    //                cmd.Parameters.AddWithValue("@status", st);
    //                cmd.Parameters.AddWithValue("@bpic", FileUpload2.FileName);
    //                cmd.Parameters.AddWithValue("@curl", Session["cleantitle"].ToString());
    //                cmd.Parameters.AddWithValue("@pop", pop);
    //                cmd.Parameters.AddWithValue("@tops", tops);
    //                cmd.Parameters.AddWithValue("@ftop", ftops);
    //                uploadbpic();
    //                cmd.ExecuteNonQuery();
    //                txtdesc.Content = "";
    //                txtdesshort.Text = "";
    //                TextBox1.Text = "";
    //                //TextBox3.Text = "";
    //               CheckBox2.Checked = false;
    //               CheckBox3.Checked = false;
    //               CheckBox4.Checked = false;
    //                TextBox2.Text = "";
    //                DropDownList1.SelectedIndex = 0;
    //                CheckBox1.Checked = false;
    //                bind();

    //                Response.Write("<script language='javascript'> alert('News Added successfully.'); </script>");
    //            }
    //            else
    //            {
    //                strqry = "Insert into article([category],[title],[descriptionshort],[location],[description],[lastupdatedate],[author],[status],[bannerpic],[cleantitle],[popular],[tops],[ftop]) values(@cat,@head,@shrtdesc,@loc,@desc,@date,@auth,@status,@bpic,@curl,@pop,@tops,@ftop)";
    //                cmd = new SqlCommand(strqry, con);
    //                con.Open();
    //                cmd.Parameters.AddWithValue("@cat", DropDownList1.SelectedItem.Text);
    //                cmd.Parameters.AddWithValue("@head", TextBox2.Text);
    //                cmd.Parameters.AddWithValue("@shrtdesc", txtdesshort.Text);
    //                cmd.Parameters.AddWithValue("@loc", TextBox1.Text);
    //                cmd.Parameters.AddWithValue("@desc", txtdesc.Content);
    //                cmd.Parameters.AddWithValue("@date", DateTime.Now);
    //                cmd.Parameters.AddWithValue("@auth", txtauthor.Text);
    //                cmd.Parameters.AddWithValue("@status", st);
    //                cmd.Parameters.AddWithValue("@bpic", bpic);
    //                cmd.Parameters.AddWithValue("@curl", Session["cleantitle"].ToString());
    //                cmd.Parameters.AddWithValue("@popular", pop);
    //                cmd.Parameters.AddWithValue("@tops", tops);
    //                cmd.Parameters.AddWithValue("@pop", pop);
    //                cmd.Parameters.AddWithValue("@ftop", ftops);
    //                uploadbpic();
    //                cmd.ExecuteNonQuery();
    //                txtdesc.Content = "";
    //                txtdesshort.Text = "";
    //                TextBox1.Text = "";
    //                //TextBox3.Text = "";
    //                CheckBox2.Checked = false;
    //                CheckBox3.Checked = false;
    //                TextBox2.Text = "";
    //                DropDownList1.SelectedIndex = 0;
    //                CheckBox1.Checked = false;
    //                bind();
    //                Response.Write("<script language='javascript'> alert('News Added successfully.'); </script>");
    //            }
    //            //WriteFeed();
    //        }
    //        else
    //        {

    //            Response.Write("<script language='javascript'> alert('Fill all Manadatory Fields and Select the News Category'); </script>");
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
    //    }
    //    //catch
    //    //{
    //    //    Response.Write("<script language='javascript'> alert('Duplicate Heading'); </script>");
    //    //}

    //    finally
    //    {
    //        con.Close();
    //        con.Dispose();
    //    }
    //}
    //private void WriteFeed()
    //{
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
    //    if (System.IO.File.Exists(MapPath("~/Feed.xml")))
    //    {
    //        System.IO.File.Delete(MapPath("~/Feed.xml"));
    //    }
    //    XmlTextWriter objX = new XmlTextWriter(MapPath("~/Feed.xml"), Encoding.UTF8);
    //    objX.WriteStartDocument();
    //    objX.WriteStartElement("rss");
    //    objX.WriteAttributeString("version", "2.0");
    //    objX.WriteAttributeString("xmlns:content", "http://purl.org/rss/1.0/modules/content/");
    //    objX.WriteStartElement("channel");

    //    objX.WriteElementString("title", "UNT");
    //    objX.WriteElementString("link", "http://www.universalnewstimeline.com/");
    //    objX.WriteElementString("description", "");


    //    SqlCommand cmd = new SqlCommand("Select TOP 50 * From article  ORDER BY ID DESC", con);
    //    con.Open();
    //    SqlDataReader dr = cmd.ExecuteReader();

    //    while (dr.Read())
    //    {
    //        objX.WriteStartElement("item");

    //        objX.WriteElementString("title", dr["Title"].ToString());
    //        objX.WriteElementString("author", dr["author"].ToString());
    //        objX.WriteElementString("description", "");
    //        objX.WriteStartElement("content:encoded");
    //        objX.WriteCData(dr["description"].ToString());
    //        objX.WriteEndElement();

    //        objX.WriteStartElement("guid");
    //        objX.WriteAttributeString("isPermaLink", "false");
    //        objX.WriteString("http://www.universalnewstimeline.com/" + dr["CleanTitle"].ToString());
    //        objX.WriteEndElement();

    //        objX.WriteElementString("pubdate", String.Format("{0:R}", dr["lastupdatedate"]));
    //        objX.WriteStartElement("category");
    //        objX.WriteString(dr["category"].ToString());
    //        objX.WriteEndElement();
    //        objX.WriteElementString("picturelink", "http://www.universalnewstimeline.com/Banner-Pics/" + dr["bannerpic"].ToString());

    //        objX.WriteEndElement();
    //    }

    //    objX.WriteEndElement();
    //    objX.WriteEndElement();
    //    objX.WriteEndDocument();
    //    objX.Flush();
    //    objX.Close();
    //}
    //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    GridView1.PageIndex = e.NewPageIndex;
    //    GridView1.DataBind();
    //    bind();
    //}
    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    Session["cn"] = e.CommandArgument.ToString();
    //    Session["ca"] = e.CommandName; 
    //}
    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    strqry = "delete from article where id='" + Session["cn"].ToString() + "'";
    //    cmd = new SqlCommand(strqry, con);
    //    try
    //    {
    //        con.Open();
    //        cmd.ExecuteNonQuery();
    //        Response.Write("<script language='javascript'> alert('News Deleted Successfully'); </script>");
    //        bind();
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
    //    }
    //    finally
    //    {
    //        con.Close();
    //        con.Dispose();

    //    }
    //}
    //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    btnupdate.Visible = true;
    //    btnsave.Visible = false;
    //    btncancel.Visible = true;
    //    strqry = "select * from article where id='" + Session["cn"].ToString() + "'";
    //    cmd = new SqlCommand(strqry, con);
    //    try
    //    {
    //        con.Open();
    //        dr = cmd.ExecuteReader();
    //        if (dr.HasRows)
    //        {
    //            dr.Read();
    //            DropDownList1.SelectedValue = dr["category"].ToString();
    //            TextBox2.Text = dr["title"].ToString();
    //            Session["cleantitle"] = dr["cleantitle"].ToString();
    //            //TextBox3.Text = dr["cleantitle"].ToString();
    //            txtdesshort.Text = dr["descriptionshort"].ToString();
    //            TextBox1.Text = dr["location"].ToString();
    //            txtdesc.Content = dr["description"].ToString();
    //            txtauthor.Text = dr["author"].ToString();
    //            int st =Convert.ToInt32(dr["status"].ToString());
    //            int pop = Convert.ToInt32(dr["popular"].ToString());
    //            int top = Convert.ToInt32(dr["tops"].ToString());
    //            int ftop = Convert.ToInt32(dr["ftop"].ToString());
    //            if (st == 1)
    //            {
    //                CheckBox1.Checked = true;
    //            }
    //            else
    //            {
    //                CheckBox1.Checked = false;
    //            }
    //            if (pop == 1)
    //            {
    //                CheckBox2.Checked = true;
    //            }
    //            else
    //            {
    //                CheckBox2.Checked = false;
    //            }
    //            if (top == 1)
    //            {
    //                CheckBox3.Checked = true;
    //            }
    //            else
    //            {
    //                CheckBox3.Checked = false;
    //            }
    //            if (ftop == 1)
    //            {
    //                CheckBox4.Checked = true;
    //            }
    //            else
    //            {
    //                CheckBox4.Checked = false;
    //            }
                
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write("<script language='javascript'>alert('" + ex.Message + "'); </script>");
    //    }
    //    finally
    //    {
    //        con.Close();
    //        con.Dispose();
    //    }
    //}   

    
}