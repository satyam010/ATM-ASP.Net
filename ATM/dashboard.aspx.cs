using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ATM
{
    public partial class dashboard : login
    {
        public static double balance;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getBalance();
            Label1.Text = "Account balance = " + balance;
            Label1.Visible = true;
        }

        public static void getBalance()
        {
            using (con = new SqlConnection(conString))
            {
                con.Open();
                string query = "select balance from person where acno = '" + eacno + "'";
                using (com = new SqlCommand(query, con))
                {
                    using (SqlDataReader sdr = com.ExecuteReader())
                    {
                        if (sdr.Read())
                            balance = Convert.ToDouble(sdr.GetValue(0));
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("withdraw.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deposit.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("pin.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("statement.aspx");
        }
    }
}