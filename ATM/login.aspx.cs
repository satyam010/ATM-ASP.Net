using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ATM
{
    public partial class login : System.Web.UI.Page
    {
        public static string conString = @"Data Source=LAPTOP-66NTHQ8N\sqlexpress;Initial Catalog=prakash;Integrated Security=true";
        public static SqlConnection con;
        public static SqlCommand com;
        public static int epin, apin;
        public static string eacno;
        protected void Page_Load(object sender, EventArgs e)
        {

            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.ToString() == "")
            {
                Label3.Text = "Please enter the Account Number";
                Label3.Visible = true;
                Label3.ForeColor = System.Drawing.Color.Red;
            }
            if (TextBox2.Text.ToString() == "")
            {
                Label4.Text = "Please enter the PIN Number";
                Label4.Visible = true;
                Label4.ForeColor = System.Drawing.Color.Red;
            }



            try
            {
                if (TextBox1.Text.ToString() != "")
                    eacno = TextBox1.Text.ToString();
                if (TextBox2.Text.ToString() != "")
                    epin = Convert.ToInt32(TextBox2.Text);

                if (TextBox1.Text.ToString() != "" && TextBox2.Text.ToString() != "")
                {
                    if (!validateUser())
                    {
                        Label5.Text = "Wrong Credentials";
                        Label5.Visible = true;
                        Label5.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        Response.Redirect("dashboard.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                Label5.Text = "Invalid Input";
                Label5.Visible = true;
                Label5.ForeColor = System.Drawing.Color.Red;
            }

        }

        public static bool validateUser()
        {
            using (con = new SqlConnection(conString))
            {
                con.Open();
                string query = "select pin from person where acno = '" + eacno + "'";
                using (com = new SqlCommand(query, con))
                {
                    using (SqlDataReader sdr = com.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            apin = Convert.ToInt32(sdr.GetValue(0));
                        }
                    }
                }
            }
            return (epin == apin);
        }
    }
}