using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace simpleregistration
{
     
      public partial class WebForm1 : System.Web.UI.Page
    {
          protected void Page_Load(object sender, EventArgs e)
          {
              if (!IsPostBack)
              {

                  fill();

              }
          }

    /// <summary>
    /// Save Records.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
        protected void Bsubmit_Click(object sender,EventArgs e)
        {

           string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
           SqlConnection conn = new SqlConnection(connectionString);
         conn.Open();  
       // string insertQuery = "insert into data(Name,MobileNumber,Address)values(@Name,@MobileNumber,@Address)";
        SqlCommand cmd = new SqlCommand("CreateUpdate", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Name", TextBox1.Text);  
        cmd.Parameters.AddWithValue("@MobileNumber", TextBox2.Text);  
        cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
        cmd.ExecuteNonQuery();
         
       
        Response.Write("Student registeration Successfully!!!thank you");  
  
        conn.Close();
        fill();
       

        }
       void fill()
        {

            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);           
           SqlDataAdapter da = new SqlDataAdapter("vIEWALL",conn);
            DataTable dt = new DataTable();
            da.Fill(dt); 
            gvconnect.DataSource = dt;
           gvconnect.DataBind();
           
            conn.Close();
        }

      }
}