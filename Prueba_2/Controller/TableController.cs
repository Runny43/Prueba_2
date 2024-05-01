using Prueba_2.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Prueba_2.Controller
{
    public class TableController
    {
        public List<Table> GetTable()
        {
            List<Table> tablesList = new List<Table>();

            DatabaseHelper.Database database = new DatabaseHelper.Database();
            DataTable ds = database.GetTables();

            foreach (DataRow dr in ds.Rows)
            {
                tablesList.Add(new Table
                {
                    tableName = dr["TABLE_NAME"].ToString()
                });
            }

            return tablesList;
        }

    }
}