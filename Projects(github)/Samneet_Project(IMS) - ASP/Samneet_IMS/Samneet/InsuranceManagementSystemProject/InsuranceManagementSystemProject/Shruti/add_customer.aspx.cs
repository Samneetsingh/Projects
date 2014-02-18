using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace PNewCustomerDetails
{
    public partial class _Default : System.Web.UI.Page
    {

        string str;
         
        
        protected void Page_Load(object sender, EventArgs e)
        {   SqlConnection con = new SqlConnection("server=KUSHAL-F40C4BD0;database=insurance;Integrated Security=true");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select top 1 * from customer_info order by Customer_ID desc", con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    str = dr[0].ToString();
                }
                string str2 = str.Substring(1, str.Length - 1);
                int a = Convert.ToInt32(str2);
                
                a++;
                if (a > 0 && a <= 9)
                    TextBox1.Text = "C00" + a.ToString();
                if (a > 9 && a <= 999)
                    TextBox1.Text = "C0" + a.ToString();
                if (a > 999)
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
            SqlConnection con = new SqlConnection("server=KUSHAL-F40C4BD0;database=insurance;Integrated Security=true");
            con.Open();
            try
            {

                SqlCommand cmd = new SqlCommand("insert into customer_info values(@ID,@Name,@Address,@Contact,@Vehicle_name,@Vehicle_type,@Model,@Vehicle_no,@Purchasing_year,@Meeting_date)", con);
                cmd.Parameters.Add(new SqlParameter("@ID", TextBox1.Text));
                cmd.Parameters.Add(new SqlParameter("@Name", TextBox2.Text));
                cmd.Parameters.Add(new SqlParameter("@Address", TextBox6.Text));
                cmd.Parameters.Add(new SqlParameter("@Contact", TextBox3.Text));
                cmd.Parameters.Add(new SqlParameter("@Vehicle_name", DropDownList1.SelectedItem.Value));
                cmd.Parameters.Add(new SqlParameter("@Vehicle_type", DropDownList2.SelectedItem.Value));
                cmd.Parameters.Add(new SqlParameter("@Model", DropDownList3.SelectedItem.Value));
                cmd.Parameters.Add(new SqlParameter("@Vehicle_no", TextBox5.Text));
                cmd.Parameters.Add(new SqlParameter("@Purchasing_year", DropDownList4.SelectedItem.Value));
                string str = DropDownList5.SelectedItem.Value + "/" + DropDownList6.SelectedItem.Value + "/" + DropDownList7.SelectedItem.Value + "," + DropDownList8.SelectedItem.Value + ":" + DropDownList9.SelectedItem.Value;
                cmd.Parameters.Add(new SqlParameter("@Meeting_date", str.ToString()));

                cmd.ExecuteNonQuery();
                Response.Write("Entries Added");

            }
            catch (Exception ex)
            {
                Response.Write("Duplicate values not allowed!!!");
            }
        }

        

 
    }
}