using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ATM
{
    public partial class withdraw : dashboard
    {
        public static double withdrawAmount, avalilableBalance;
        public static string avbal,amtw;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.ToString() == "")
            {
                Label2.Text = "Please enter the amount to be withdrawn";
                Label2.Visible = true;
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            try
            {
                if (TextBox1.Text != "")
                {
                    withdrawAmount = Convert.ToDouble(TextBox1.Text);
                    getBalance();
                    avalilableBalance = balance - withdrawAmount;
                    updateBalance();
                    UpdateStatement();

                    avbal = "Available Balance is " + Convert.ToString(avalilableBalance);
                    amtw = "Amount WithDrawn is " + Convert.ToString(withdrawAmount);

                    //Response.Redirect("Depositnp.aspx?string="+avbal);
                    Response.Redirect("Depositnp.aspx?value1=" + avbal + "&value2=" + amtw);
                }
            }
            catch (Exception ex)
            {
                Label2.Text = "Invalid Input";
                Label2.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        public static void updateBalance()
        {
            using (con = new SqlConnection(conString))
            {
                string query = "update person set balance = " + avalilableBalance + "where acno = '" + eacno + "'";
                con.Open();
                using (com = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(com))
                    {
                        sda.UpdateCommand = new SqlCommand(query, con);
                        sda.UpdateCommand.ExecuteNonQuery();
                    }
                }
            }
        }

        public static void UpdateStatement()
        {
            using (con = new SqlConnection(conString))
            {
                con.Open();
                string query = "insert into statement values(" + withdrawAmount + ",GetDate(),'Debit','" + eacno + "'," + avalilableBalance + ")";
                using (com = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        sda.InsertCommand = new SqlCommand(query, con);
                        sda.InsertCommand.ExecuteNonQuery();
                    }
                }

            }
        }

    }
}