using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration_Page_Validation
{
    public partial class Exception_Handling : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;

        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from Employee_Table", con);

                SqlDataReader dr = cmd.ExecuteReader();

                DataTable t = new DataTable();
                t.Load(dr);

                gv.DataSource = t;
                gv.DataBind();

                dr.Close();
            }
            catch (SqlException ex)
            {
                lbl.Text = "Database error: " + ex.Message;
            }
            catch (Exception ex)
            {
                lbl.Text = "Some error: " + ex.Message;
                throw;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try
            {
                SqlDataAdapter ad = new SqlDataAdapter("select * from Employee", con);

                DataTable dt = new DataTable();

                ad.Fill(dt);

                gv.DataSource = dt;
                gv.DataBind();
            }
            catch (InvalidOperationException ex)
            {
                lbl.Text = "Invalid operation: " + ex.Message;
            }
            catch (Exception ex)
            {
                lbl.Text = ex.Message;
            }
            finally
            {
                lbl.Text += "  Done.";
            }
        }
    }
}