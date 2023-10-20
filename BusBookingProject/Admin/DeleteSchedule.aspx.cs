using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject.Admin
{
    public partial class DeleteSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                string connectionString = ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ConnectionString;

                int busId;
                if (int.TryParse(TextBox1.Text, out busId))
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        try
                        {
                            connection.Open();
                            string query = "DELETE FROM RouteDetails WHERE BusID = @BusID";
                            SqlCommand command = new SqlCommand(query, connection);
                            command.Parameters.AddWithValue("@BusID", busId);
                            int rowsAffected = command.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                // Route deleted successfully
                                // You can add any additional actions you want to perform here
                                Response.Write("Route deleted successfully.");
                            }
                            else
                            {
                                // No route found with the provided BusID
                                Response.Write("No route found with the provided BusID.");
                            }
                        }
                        catch (Exception ex)
                        {
                            // Handle any exceptions that might occur during the database operation
                            Response.Write("An error occurred: " + ex.Message);
                        }
                    }
                }
                else
                {
                    // Invalid input for BusID
                    Response.Write("Please enter a valid BusID.");
                }
            }

        }
    }
}