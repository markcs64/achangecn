using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.IO;
using ChangeHope;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class setUp_SetUp : System.Web.UI.Page
{
    YX_sql Exsql = new YX_sql();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.Panel8.Visible = false;
            this.Panel7.Visible = false;
            this.Panel6.Visible = false;
            this.Panel5.Visible = false;
            this.Panel4.Visible = false;
            this.Panel3.Visible = false;
            this.Panel2.Visible = false;
            this.Panel1.Visible = true;
        }        
    }

    private void Default()
    {
        YX_sql Exsql = new YX_sql();
        string sqlstr = "select * from YX_WebInfo";
        Exsql.Open();
        SqlDataReader dr = Exsql.Re_dr(sqlstr);
        if (dr.Read())
        {
            Page.Title = dr["YX_WebName"].ToString();
        }
        this.txtURL.Text = dr["YX_WebUrl"].ToString();
        this.Web_Name.Text = dr[1].ToString();
        this.Web_Fac.Text = dr["yx_Fac"].ToString();
        if (dr["yx_moble"] == DBNull.Value)
        {
            this.Web_Mobel.Text = "没有设置手机号绑定";
        }
        else
        {
            this.Web_Mobel.Text = dr["yx_moble"].ToString();
        }
        this.Web_Ex.Text = dr[3].ToString();
        this.Web_Email.Text = dr[4].ToString();
        this.Web_Addr.Text = dr[5].ToString();
        this.Web_tel.Text = dr[6].ToString();
        this.Web_Copy.Text = dr[10].ToString();
        Exsql.Close();
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        if (this.RadioButtonList1.Items[0].Selected)
        {
            this.Panel1.Visible = false;
            this.Panel7.Visible = false;
            this.Panel2.Visible = false;
            this.Panel3.Visible = true;
            this.Panel4.Visible = false;
            this.Panel5.Visible = false;
            this.Panel6.Visible = false;
        }
        else
        {
            this.Panel1.Visible = false;
            this.Panel7.Visible = true;
            this.Panel2.Visible = false;
            this.Panel3.Visible = false;
            this.Panel4.Visible = false;
            this.Panel5.Visible = false;
            this.Panel6.Visible = false;
        }
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        //重写web.config
        string ip = this.TextBox2.Text.Trim();
        string database = this.TextBox3.Text.Trim();
        string uid = this.TextBox4.Text.Trim();
        string pwd = this.TextBox5.Text.Trim();
        string config = "<add key=\"YXPath\" value=\"server="+ip+";uid="+uid+";pwd="+pwd+";Trusted_Connection=no;database="+database+"\"/>";
        string oldconn = "<add key=\"YXPath\" value=\"server=.;uid=sa;pwd=;Trusted_Connection=no;database=c2cpaipai\"/>";        
        StringBuilder sb = new StringBuilder();
        FileStream fs = File.Open(Server.MapPath("../Web.Config"), FileMode.Open, FileAccess.Read);
        StreamReader sr = new StreamReader(fs, Encoding.Default);
        sb.Append(sr.ReadToEnd());
        try
        {            
            FileStream ft = new FileStream(Server.MapPath("../web.config"), FileMode.Open, FileAccess.Write);
            StreamWriter sw = new StreamWriter(ft, Encoding.Default);
            sr.Close();
            sw.WriteLine(sb.ToString().Replace(oldconn, config));
            this.Panel8.Visible = true;
            this.Panel3.Visible = false;
        }
        catch
        {
            this.ImageButton16.Enabled = true;
            this.Label7.Visible = true;
            this.Label7.Text = "对不起，站点配置文件改写失败！请复制下面文本框中的代码，将其另存为\"web.config\"文件，然后通过Ftp上传到站点根目录，覆盖掉原有的\"web.config\"，然后点击\"跳过\"按扭以继续安装！";
            this.TextBox6.Text = sb.ToString().Replace(oldconn,config);
            this.TextBox6.Visible = true;
        }
        fs.Dispose();
        sr.Close();
        sr.Dispose();
        //创建表的所有权
        FileStream tfs = File.Open(Server.MapPath("../YX_SetUp/start.txt"), FileMode.Open, FileAccess.Read);
        StreamReader tsr = new StreamReader(tfs, Encoding.Default);
        sb.Append(tsr.ReadToEnd());
        try
        {
            FileStream tft = new FileStream(Server.MapPath("../YX_SetUp/start.txt"), FileMode.Open, FileAccess.Write);
            StreamWriter tsw = new StreamWriter(tft, Encoding.Default);
            tsr.Close();
            tsw.WriteLine(sb.ToString().Replace("dbo.", uid + "."));
        }
        catch
        {
            this.TextBox6.Text += sb.ToString().Replace("dbo.", uid + ".");
        }
        finally
        {
            tfs.Dispose();
            tsr.Dispose();
        }
        //创建存储过程的所有权
        FileStream cfs = File.Open(Server.MapPath("../YX_SetUp/createProc.txt"), FileMode.Open, FileAccess.Read);
        StreamReader csr = new StreamReader(cfs, Encoding.Default);
        sb.Append(csr.ReadToEnd());
        try
        {
            FileStream cft = new FileStream(Server.MapPath("../YX_SetUp/createProc.txt"), FileMode.Open, FileAccess.Write);
            StreamWriter csw = new StreamWriter(cft, Encoding.Default);
            csr.Close();
            csw.WriteLine(sb.ToString().Replace("[dbo].", "[" + uid + "]."));
        }
        catch
        {

            this.TextBox6.Text += sb.ToString().Replace("[dbo].", "[" + uid + "].");
        }
        finally
        {
            cfs.Dispose();
            csr.Dispose();
        }
    }
    private void YX_CreateTable()
    {//start6,start5,start4,start2,start,createProc,createTable
        //创建表结构
        StringBuilder sb = new StringBuilder();
        try
        {
            using (StreamReader objReader = new StreamReader(Server.MapPath("../YX_SetUp/createTable.txt"), Encoding.Default))
            {
                sb.Append(objReader.ReadToEnd());
                objReader.Close();
            }
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["YXPath"]);
            con.Open();
            SqlCommand cmd = new SqlCommand(sb.ToString(), con);
            cmd.ExecuteNonQuery();
            con.Close();
            this.Label1.Visible = true;
            this.Label1.Text = "·数据库表结构创建成功！";
        }
        catch (Exception ee)
        {
            this.Label1.Visible = true;
            this.Label1.Text = "·数据库表结构创建失败！";
        }
    }
    private void YX_CreateProcAndTrigger()
    {
        //创建存储过程
        StringBuilder sb = new StringBuilder();
        try
        {
            using (StreamReader objReader = new StreamReader(Server.MapPath("../YX_SetUp/createProc.txt"), Encoding.Default))
            {
                sb.Append(objReader.ReadToEnd());
                objReader.Close();
            }
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["YXPath"]);
            con.Open();
            foreach (string sql in sb.ToString().Trim().Split('~'))
            {
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
            }
            con.Close();
            this.Label3.Visible = true;
            this.Label3.Text = "·数据库存储过程和触发器创建成功！";
        }
        catch (Exception ee)
        {
            this.Label3.Visible = true;
            this.Label3.Text = "·数据库存储过程和触发器创建失败！";
        }

    }
    private void CreateView()
    {
        //创建视图
        StringBuilder sb = new StringBuilder();
        try
        {
            using (StreamReader objReader = new StreamReader(Server.MapPath("../YX_SetUp/c2cview.txt"), Encoding.Default))
            {
                sb.Append(objReader.ReadToEnd());
                objReader.Close();
            }
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["YXPath"]);
            con.Open();
            foreach (string sql in sb.ToString().Trim().Split('~'))
            {
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
            }
            con.Close();
            this.Label9.Visible = true;
            this.Label9.Text = "·数据库视图创建成功！";
        }
        catch (Exception ee)
        {
            this.Label9.Visible = true;
            this.Label9.Text = "·数据库视图创建失败！";
        }
 
    }
    private void YX_Start()
    {
        //插入基础表数据
        StringBuilder sb = new StringBuilder();
        try
        {
            using (StreamReader objReader = new StreamReader(Server.MapPath("../YX_SetUp/start.txt"), Encoding.Default))
            {
                sb.Append(objReader.ReadToEnd());
                objReader.Close();
            }
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["YXPath"]);
            con.Open();
            SqlCommand cmd = new SqlCommand(sb.ToString(), con);
            cmd.ExecuteNonQuery();
            con.Close();
            this.Label4.Visible = true;
            this.Label4.Text = "·数据库基础表数据插入成功！";
        }
        catch (Exception ee)
        {
            this.Label4.Visible = true;
            this.Label4.Text = "·数据库基础表数据插入失败！";
        }
    }
    private void insertModel()
    {
        //插入样式和标签数据
        StringBuilder sb = new StringBuilder();
        try
        {
            using (StreamReader objReader = new StreamReader(Server.MapPath("../YX_SetUp/start2.txt"), Encoding.Default))
            {
                sb.Append(objReader.ReadToEnd());
                objReader.Close();
            }
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["YXPath"]);
            con.Open();
            SqlCommand cmd = new SqlCommand(sb.ToString(), con);
            cmd.ExecuteNonQuery();
            con.Close();
            this.Label5.Visible = true;
            this.Label5.Text = "·插入样式和标签数据成功！";
        }
        catch (Exception ee)
        {
            this.Label5.Visible = true;
            this.Label5.Text = "·插入样式和标签数据失败！";
        }
    }
    private void insertCSS()
    {
        //插入系统CSS数据成功
        StringBuilder sb = new StringBuilder();
        try
        {
            using (StreamReader objReader = new StreamReader(Server.MapPath("../YX_SetUp/start4.txt"), Encoding.Default))
            {
                sb.Append(objReader.ReadToEnd());
                objReader.Close();
            }
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["YXPath"]);
            con.Open();
            SqlCommand cmd = new SqlCommand(sb.ToString(), con);
            cmd.ExecuteNonQuery();
            con.Close();
            this.Label6.Visible = true;
            this.Label6.Text = "·系统CSS数据插入成功！";
        }
        catch (Exception ee)
        {
            this.Label6.Visible = true;
            this.Label6.Text = "·系统CSS数据插入失败！";
        }

    }
    private void start5()
    {
        //插入网站模版数据
        StringBuilder sb = new StringBuilder();
        try
        {
            using (StreamReader objReader = new StreamReader(Server.MapPath("../YX_SetUp/start5.txt"), Encoding.Default))
            {
                sb.Append(objReader.ReadToEnd());
                objReader.Close();
            }
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["YXPath"]);
            con.Open();
            SqlCommand cmd = new SqlCommand(sb.ToString(), con);
            cmd.ExecuteNonQuery();
            con.Close();
            this.Label2.Visible = true;
            this.Label2.Text = "·网站模版数据插入成功！";
        }
        catch (Exception ex)
        {
            this.Label2.Visible = true;
            this.Label2.Text = "·网站模版数据插入失败！";
        } 
    }
    private void start6()
    {
        //插入网站模版数据
        StringBuilder sb = new StringBuilder();
        try
        {
            using (StreamReader objReader = new StreamReader(Server.MapPath("../YX_SetUp/start6.txt"), Encoding.Default))
            {
                sb.Append(objReader.ReadToEnd());
                objReader.Close();
            }
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["YXPath"]);
            con.Open();
            SqlCommand cmd = new SqlCommand(sb.ToString(), con);
            cmd.ExecuteNonQuery();
            con.Close();
            this.Label8.Visible = true;
            this.Label8.Text = "·网站通用标签数据插入成功！";
        }
        catch (Exception ee)
        {
            this.Label8.Visible = true;
            this.Label8.Text = "·网站通用标签数据插入失败！";
        }  
    }
    public void BindSysInfo()
    {
        YX_sql Exsql = new YX_sql();
        string fs = "";
        fs = Request.QueryString["YX_FS"];
        if (fs == null)
        {
            string sql = "select * from YX_WebInfo";
            Exsql.Open();
            SqlDataReader dr = Exsql.Re_dr(sql);
            if (dr.Read())
            {
                Page.Title = dr["YX_WebName"].ToString();
            }
            this.txtURL.Text = dr["YX_WebUrl"].ToString();
            this.Web_Name.Text = dr[1].ToString();
            this.Web_Email.Text = dr[4].ToString();
            this.Web_Addr.Text = dr[5].ToString();
            this.Web_tel.Text = dr[6].ToString();
            this.Web_Fac.Text = dr[7].ToString();
            this.Web_Mobel.Text = dr[8].ToString();
            this.Web_Copy.Text = dr[10].ToString();
        }     
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        string webname = this.Web_Name.Text;
        string weburl = this.txtURL.Text;
        string webdescribe = this.Web_Ex.Text;
        string webemail = this.Web_Email.Text;
        string webaddress = this.Web_Addr.Text;
        string webcopyright = this.Web_Copy.Text;
        string webtel = this.Web_tel.Text;
        string webfax = this.Web_Fac.Text;
        string webmobile = this.Web_Mobel.Text;
        string sql = "update YX_WebInfo set YX_WebName='" + webname + "',YX_Ex='" + webdescribe + "',YX_Email='" + webemail + "',YX_Addr='" + webaddress + "',YX_WebUrl='" + weburl + "',YX_Copy='" + webcopyright + "',YX_Moble='" + webmobile + "',YX_Fac='" + webfax + "',YX_Tel='" + webtel + "'";
        YX_sql Exsql = new YX_sql();
        Exsql.Open();
        SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["YXPath"]);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        try
        {
            cmd.ExecuteNonQuery();
            ChangeHope_CMS Cms = new ChangeHope_CMS();
            StringBuilder Shtml = new StringBuilder();
            string Content1 = "";
            Content1 = Cms.GetAllTag("Default");
            Shtml.Append(Content1);
            string Paths = Server.MapPath("../") + "\\" + "index.html";
            Cms.SetHtml(Shtml, Paths);
            Exsql.Close();
        }
        catch
        {

        }

        this.Panel1.Visible = false;
        this.Panel7.Visible = false;
        this.Panel2.Visible = false;
        this.Panel3.Visible = false;
        this.Panel4.Visible = false;
        this.Panel5.Visible = false;
        this.Panel6.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        this.web();
        this.Panel1.Visible = false;
        this.Panel7.Visible = true;
        this.Panel2.Visible = false;
        this.Panel3.Visible = false;
        this.Panel4.Visible = false;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false;
    }
    private void web()
    {
        SERVER_SOFTWARE.Text = Request.ServerVariables["SERVER_SOFTWARE"];
        string allhttp = Request.ServerVariables["HTTP_USER_AGENT"].ToString();
        char[] de = { ';' };
        string[] myFilename = allhttp.Split(de);
        runtime.Text = myFilename[myFilename.Length - 1].Replace(")", " ");
        OS.Text = myFilename[2];
        if (checkobj("Scripting.FileSystemObject"))
        {
            fso.Text = "已安装";
        }
        else
        {
            fso.Text = "未安装";
        }
        if (checkobj("Persits.Upload"))
        {
            aspupload.Text = "已安装";
        }
        else
        {
            aspupload.Text = "未安装";
        }
    }
    bool checkobj(string obj)
    {
        try
        {
            object meobj = Server.CreateObject(obj);
            return (true);
        }
        catch (Exception)
        {
            return (false);
        }
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        this.Panel1.Visible = false;
        this.Panel7.Visible = false;
        this.Panel2.Visible = true;
        this.Panel3.Visible = false;
        this.Panel4.Visible = false;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false;
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        this.Panel1.Visible = false;
        this.Panel7.Visible = false;
        this.Panel2.Visible = true;
        this.Panel3.Visible = false;
        this.Panel4.Visible = false;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        this.Panel1.Visible = true;
        this.Panel7.Visible = false;
        this.Panel2.Visible = false;
        this.Panel3.Visible = false;
        this.Panel4.Visible = false;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        this.Panel1.Visible = false;
        this.Panel7.Visible = true;
        this.Panel2.Visible = false;
        this.Panel3.Visible = false;
        this.Panel4.Visible = false;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false;
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        this.Panel1.Visible = false;
        this.Panel7.Visible = false;
        this.Panel2.Visible = true;
        this.Panel3.Visible = false;
        this.Panel4.Visible = false;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false;
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        this.Panel1.Visible = false;
        this.Panel7.Visible = false;
        this.Panel2.Visible = false;
        this.Panel3.Visible = true;
        this.Panel4.Visible = false;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false;
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        if (this.CheckBox1.Checked)
        {
            this.Panel1.Visible = false;
            this.Panel7.Visible = false;
            this.Panel2.Visible = false;
            this.Panel3.Visible = false;
            this.Panel4.Visible = false;
            this.Panel5.Visible = true;
            this.Panel6.Visible = false;
            this.Default();
        }
        else
        {
            this.Panel1.Visible = false;
            this.Panel7.Visible = false;
            this.Panel2.Visible = false;
            this.Panel3.Visible = false;
            this.Panel4.Visible = false;
            this.Panel5.Visible = false;
            this.Panel6.Visible = true; 
        }
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        this.Panel1.Visible = false;
        this.Panel7.Visible = false;
        this.Panel2.Visible = false;
        this.Panel3.Visible = false;
        this.Panel4.Visible = true;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false; 
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        if (this.CheckBox2.Checked)
        {
            File.Delete(Server.MapPath("../YX_SetUp/createProc.txt"));
            File.Delete(Server.MapPath("../YX_SetUp/createTable.txt"));
            File.Delete(Server.MapPath("../YX_SetUp/start.txt"));
            File.Delete(Server.MapPath("../YX_SetUp/start2.txt"));
            File.Delete(Server.MapPath("../YX_SetUp/start4.txt"));
            File.Delete(Server.MapPath("../YX_SetUp/start5.txt"));
            File.Delete(Server.MapPath("../YX_SetUp/start6.txt"));
            File.Delete(Server.MapPath("../YX_SetUp/c2cview.txt"));
            File.Delete(Server.MapPath("../YX_SetUp/SetUp.aspx"));
            File.Delete(Server.MapPath("../YX_SetUp/zhuanhua.aspx"));
            Response.Redirect("../index.html");
        }
        else
        {
            Response.Redirect("../index.html"); 
        }
    }
    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        this.YX_CreateTable();
        this.YX_CreateProcAndTrigger();
        this.CreateView();
        this.YX_Start();
        this.insertModel();
        this.insertCSS();
        this.start5();
        this.start6();
        this.Panel1.Visible = false;
        this.Panel7.Visible = false;
        this.Panel2.Visible = false;
        this.Panel3.Visible = false;
        this.Panel4.Visible = true;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false;
        this.Panel8.Visible = false;
    }
    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        this.Panel1.Visible = false;
        this.Panel7.Visible = false;
        this.Panel2.Visible = false;
        this.Panel3.Visible = false;
        this.Panel4.Visible = false;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false;
        this.Panel8.Visible = true;
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        this.Panel1.Visible = false;
        this.Panel7.Visible = false;
        this.Panel2.Visible = false;
        this.Panel3.Visible = true;
        this.Panel4.Visible = false;
        this.Panel5.Visible = false;
        this.Panel6.Visible = false;
        this.Panel8.Visible = false;
    }
}
