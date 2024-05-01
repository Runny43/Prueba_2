using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Prueba_2.DatabaseHelper
{
    public class Database
    {
        const string database = "Prueba_2";
        const string server = "DESKTOP-G0MO3BT";
        SqlConnection connection = new SqlConnection($"Data Source={server};Initial Catalog={database};Integrated Security=True");

        public DataTable GetTables()
        {
            return Fill("spGetTables");
        }

        public DataTable Fill(string storedProcedure)
        {
            //control de errores
            try
            {
                //usamos la conexion
                using (this.connection)
                {

                    //abra la conexion a la base de datos
                    connection.Open();
                    //creamos un comando de base de datos
                    SqlCommand cmd = connection.CreateCommand();
                    //el comando es de tipo store procedure
                    cmd.CommandType = CommandType.StoredProcedure;
                    //le damos el noombre del store procedure
                    cmd.CommandText = storedProcedure;

                    //creamos el objeto que almacena los datos
                    DataTable ds = new DataTable();
                    //el adaptador ejecuta el comando a la base de datos
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    //llena el objeto con los datos que devolvio el adapter
                    adapter.Fill(ds);
                    //retornamos el objeto lleno de datos
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
        
    }
}