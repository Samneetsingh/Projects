using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace shruti_project
{
    public partial class Login : System.Web.UI.Page
    {
        int flag = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "Administrator")
            {
                if (TextBox1.Text == "admin" && TextBox2.Text == "123")
                {
                    Response.Redirect("Home_page.aspx");
                }
                else
                {
                    Response.Write("Invalid Username or password!");
                }
            }

            else
            {
                SqlConnection con = new SqlConnection("server=ABC-0E678008060;database=insurance;Integrated Security=true");
                SqlCommand cmd = new SqlCommand("select * from Login1", con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (TextBox1.Text == dr[0].ToString())
                    {
                        flag = 1;
                        break;
                    }
                }
                if (flag == 1)
                {
                    if (TextBox2.Text == dr[1].ToString())
                    {
                        Response.Write("Welcome");
                    }
                    else
                    {
                        Response.Write("Wrong Password");
                    }
                }
                else {
                    Response.Write("Username doesn't exist");
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
