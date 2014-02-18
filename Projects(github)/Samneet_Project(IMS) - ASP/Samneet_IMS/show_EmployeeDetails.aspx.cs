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
    public partial class show_customerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=KUSHAL-F40C4BD0;database=insurance;Integrated Security=true");
            string cmd ="select * from employee_info";
            SqlDataAdapter da = new SqlDataAdapter(cmd, con);
            DataSet ds=new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}
