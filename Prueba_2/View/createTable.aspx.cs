using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba_2.View
{
    public partial class createTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnCreateTable_ServerClick(object sender, EventArgs e)
        {
            string tableName = txtName.Value;
            string columns = txtColumns.Value;

            char[] separador = { ',' };

            String[] parts = columns.Split(separador);
            
            const string database = "Prueba_2";
            const string server = "DESKTOP-G0MO3BT";

            using (SqlConnection connection = new SqlConnection($"Data Source={server};Initial Catalog={database};Integrated Security=True"))
            {
                connection.Open();

                string createTableQuery = "CREATE TABLE " + tableName + " (";
                foreach (var part in parts)
                {
                    

                    if (!string.IsNullOrWhiteSpace(columns))
                    {
                        createTableQuery += "[" + part + "] VARCHAR(50), ";
                    }
                }
                createTableQuery = createTableQuery.TrimEnd(',', ' ') + ")";

                SqlCommand command = new SqlCommand(createTableQuery, connection);
                try
                {
                    command.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Tabla creada de manera correcta')", true);
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error al intentar crear la tabla, favor de fijarse en que los valores esten bien escritos y con sus respectivas comas')", true);
                }
            }
        }
        
    }
}