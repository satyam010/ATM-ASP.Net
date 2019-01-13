using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATM
{
    
    public partial class statement : login
    {
        public static DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindGridView();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindGridView(); //bindgridview will get the data source and bind it again
        }

        private void bindGridView()
        {
            GridView1.DataSource = GetUserStatement();
            GridView1.DataBind();
        }

        public DataTable GetUserStatement()
        {
            try
            {
                using (con = new SqlConnection(conString))
                {
                    con.Open();
                    string query = "select amount as Amount,transactiondate as Date,type as Type,availablebalance as Balance from Statement where userid = '" + eacno + "'";
                    using (com = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(com))
                        {
                            using (dt = new DataTable())
                            {
                                sda.Fill(dt);

                                return dt;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}