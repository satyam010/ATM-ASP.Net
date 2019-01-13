using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ATM
{
    public partial class pin : login
    {
        public static int currentPIN, newPIN, confirmNewPIN;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.ToString() == "")
            {
                Label5.Visible = true;
                Label5.Text = "Please enter the current PIN";
            }
            if (TextBox2.Text.ToString() == "")
            {
                Label6.Visible = true;
                Label6.Text = "Please enter the NEW PIN";
            }
            if (TextBox3.Text.ToString() == "")
            {
                Label7.Visible = true;
                Label7.Text = "Please enter the CONFIRM NEW PIN";
            }

            try
            {
                if (TextBox3.Text.ToString() != "" && TextBox2.Text.ToString() != "" && TextBox1.Text.ToString() != "")
                {
                    currentPIN = Convert.ToInt16(TextBox1.Text);
                    newPIN = Convert.ToInt16(TextBox2.Text);
                    confirmNewPIN = Convert.ToInt16(TextBox3.Text);
                    if (currentPIN == apin)
                    {
                        if (newPIN == confirmNewPIN)
                        {
                            UpdatePIN();
                            Label4.Visible = true;
                            Label4.Text = "PIN Updated Successfully !!!";
                        }
                        else
                        {
                            Label4.Visible = true;
                            Label4.Text = "Confirm PIN  doesn't  match new PIN. Please enter again !!!";
                        }
                    }
                    else
                    {

                        Label4.Visible = true;
                        Label4.Text = "Please enter the correct PIN";
                    }
                }
            }
            catch (Exception ex)
            {
                Label4.Visible = true;
                Label4.Text = "PIN can only be integer type. Please enter only Integral Values !!";
            }
        }

        public static void UpdatePIN()
        {
            using (con = new SqlConnection(conString))
            {
                con.Open();
                string query = "update person set pin = " + newPIN + " where acno = '" + eacno + "'";
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

    }
}


