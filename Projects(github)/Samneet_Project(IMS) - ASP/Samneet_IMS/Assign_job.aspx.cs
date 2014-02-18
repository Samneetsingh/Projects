using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace project_connecting_database
{
    public partial class Assign_job : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("server=ABC-0E678008060;database=insurance;Integrated Security=true");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from customer_info", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox chk = (CheckBox)row.Cells[0].FindControl("CheckBox1");
                
                //Response.Write(chk.Checked);
                if (chk != null && chk.Checked==true)
                {
                    Response.Write(GridView1.DataSource);
                }
                else
                    Response.Write("No!!");
                //Response.Write(DropDownList1.SelectedItem);
            }

            //connecting database.....
            SqlConnection con = new SqlConnection("server=ABC-0E678008060;database=insurance;Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into assign_jobs values(@a,@b,@c,@d,@e,@f)", con);
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox chk = (CheckBox)row.FindControl("CheckBox1");
                if (chk != null && chk.Checked == true)
                {
                    cmd.Parameters.Add(new SqlParameter("@a", row.Cells[1].Text));
                    cmd.Parameters.Add(new SqlParameter("@b", row.Cells[2].Text));
                    cmd.Parameters.Add(new SqlParameter("@c", row.Cells[3].Text));
                    cmd.Parameters.Add(new SqlParameter("@d", row.Cells[4].Text));
                    cmd.Parameters.Add(new SqlParameter("@e", row.Cells[5].Text));
                    cmd.Parameters.Add(new SqlParameter("@f", row.Cells[6].Text));
                    Response.Write("Added!!");
                }
                else
                    Response.Write("Sorry");
                
            }
            con.Close();
            
        }
        private void ToggleCheckState(bool checkState)
        {
            // Iterate through the Products.Rows property
            foreach (GridViewRow row in GridView1.Rows)
            {
                // Access the CheckBox
                CheckBox cb = (CheckBox)row.FindControl("CheckBox1");
                if (cb != null)
                    cb.Checked = checkState;
            }
        }

        protected void CheckAll_Click(object sender, EventArgs e)
        {

            ToggleCheckState(true);
        }

        protected void UncheckAll_Click(object sender, EventArgs e)
        {
            ToggleCheckState(false);
        }


    }
}
