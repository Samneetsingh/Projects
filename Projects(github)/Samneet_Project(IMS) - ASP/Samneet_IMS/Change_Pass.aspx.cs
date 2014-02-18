using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace PLogin
{
    public partial class Change_Pass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=ABC-0E678008060;database=insurance;Integrated Security=true");
            con.Open();
            SqlCommand cmd=new SqlCommand("select Employee_ID,E_Password into change_password from employee_info",con);
            //SqlDataReader dr=
        
            }
    }
}