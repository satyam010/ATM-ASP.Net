using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace ATM
{
    public partial class Deposit : dashboard
    {
        public static double depositAmount, availableBalance;
        public static string avbal, amtd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
     
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.ToString() == "")
            {
                Label2.Text = "Please enter the amount to be deposited";
                Label2.Visible = true;
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            try
            {
                if (TextBox1.Text != "")
                {
                    depositAmount = Convert.ToDouble(TextBox1.Text);
                    getBalance();
                    availableBalance = balance + depositAmount;
                    
                    updateBalance();
                    UpdateStatement();

                    avbal = "Available Balance is "+ Convert.ToString(availableBalance);
                    amtd = "Amount Deposited is " + Convert.ToString(depositAmount);

                    //Response.Redirect("Depositnp.aspx?string="+avbal);
                    Response.Redirect("Depositnp.aspx?value1=" + avbal + "&value2=" + amtd);


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
                string query = "update person set balance = " + availableBalance + "where acno = '" + eacno + "'";
                con.Open();
                using (com = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
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
                string query = "insert into statement values(" + depositAmount + ",GetDate(),'Credit','" + eacno + "'," + availableBalance + ")";
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