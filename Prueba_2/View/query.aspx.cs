using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Prueba_2.View
{
    public partial class query : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVerifQuery_ServerClick(object sender, EventArgs e)
        {
            string database = txtName.Value;
            string server = "DESKTOP-G0MO3BT";
            string query = txtQuery.Value;

            
                using (SqlConnection connection = new SqlConnection($"Data Source={server};Initial Catalog={database};Integrated Security=True"))
                {
                    connection.Open();


                    SqlCommand command = new SqlCommand(query, connection);
                try { 
                    command.ExecuteNonQuery();
                   
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('El query está bien escrito y no presenta errores')", true);

                }
                catch (Exception ex)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error al intentar ejecutar el query: " + ex.Message + "')", false);
                }
            }
            
        }
    }
}