using Prueba_2.Controller;
using Prueba_2.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace Prueba_2.View
{
    public partial class deleteTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            TableController tableController = new TableController();

            List<Table> tableList = tableController.GetTable();

            repTables.DataSource = tableList;
            repTables.DataBind();
        }
        public void btnDeleteTable_ServerClick(object sender, EventArgs e)
        {

            string tableName = txtDelete.Value;
            const string database = "Prueba_2";
            const string server = "DESKTOP-G0MO3BT";

            using (SqlConnection connection = new SqlConnection($"Data Source={server};Initial Catalog={database};Integrated Security=True"))
            { 
                connection.Open();

                string deleteTableQuery = "DROP TABLE "+tableName;


                SqlCommand command = new SqlCommand(deleteTableQuery, connection);
                try
                {
                    command.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Tabla borrada')", true);

                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error al eliminar la tabla, intente revisar la lista y escriba el nombre de una lista existente')", true);
                }

            }
        }
    }
}