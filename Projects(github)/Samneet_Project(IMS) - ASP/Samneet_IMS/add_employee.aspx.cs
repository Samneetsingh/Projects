using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace InsuranceManagementSystemProject.Shruti
{
    public partial class add_employee : System.Web.UI.Page
    {
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=ABC-0E678008060;database=insurance;Integrated Security=true");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select top 1 * from employee_info order by Employee_ID desc", con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    str = dr[0].ToString();
                }
                string str2 = str.Substring(1, str.Length - 1);
                int a = Convert.ToInt32(str2);
                Response.Write(a);
                a++;
                if (a > 0 && a <= 9)
                    TextBox1.Text = "E0" + a.ToString();
                if (a > 9 && a <= 99)
                    TextBox1.Text = "E" + a.ToString();
                if (a > 99)
                    Response.Write("Out of Range!!!");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.htm");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=ABC-0E678008060;database=insurance;Integrated Security=true");
            try
            {
                
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into employee_info values(@ID,@Password,@Name,@Address,@Contact_no,@E_Mail)", con);

                    cmd.Parameters.Add(new SqlParameter("@ID", TextBox1.Text));
                    cmd.Parameters.Add(new SqlParameter("@Password", TextBox3.Text));
                    cmd.Parameters.Add(new SqlParameter("@Name", TextBox2.Text));
                    cmd.Parameters.Add(new SqlParameter("@Address", TextBox4.Text));
                    cmd.Parameters.Add(new SqlParameter("@Contact_no", TextBox5.Text));
                    cmd.Parameters.Add(new SqlParameter("@E_Mail", TextBox6.Text));
                    cmd.ExecuteNonQuery();
                    con.Close();
                    
                
            }
            catch (Exception ex)
            {
                Response.Write("Duplicate values not allowed!!");
            }
            Response.Redirect("redirect.htm");
        }

    }
}
