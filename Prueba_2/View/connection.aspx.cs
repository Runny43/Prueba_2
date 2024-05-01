using Prueba_2.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using Prueba_2.Model;

namespace Prueba_2.View
{
    public partial class connection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetConnection_ServerClick(object sender, EventArgs e)
        {
            string database = txtName.Value;
            string server = txtServer.Value;

            try
            {
                using (SqlConnection connection = new SqlConnection($"Data Source={server};Initial Catalog={database};Integrated Security=True"))
                {
                    connection.Open();

                    string getTableQuery = "SELECT TABLE_NAME FROM " + txtName.Value + ".INFORMATION_SCHEMA.TABLES";


                    SqlCommand command = new SqlCommand(getTableQuery, connection);


                    command.ExecuteNonQuery();
                    DataTable ds = new DataTable();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(ds);


                    List<Table> tablesList = new List<Table>();

                    foreach (DataRow dr in ds.Rows)
                    {
                        tablesList.Add(new Table
                        {
                            tableName = dr["TABLE_NAME"].ToString()

                        });
                    }

                    repTables.DataSource = tablesList;
                    repTables.DataBind();

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('La conexión se logró de manera eficiente con la tabla: " + txtName.Value + "')", true);

                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error al intentar conectarse, favor de revisar que los dos valores estén escritos de manera correcta ')", true);
            }
            }
        }
    }
