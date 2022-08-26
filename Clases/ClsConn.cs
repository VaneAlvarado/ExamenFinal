using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExamenFinal.Clases
{
    public class ClsConn
    {
        public static SqlConnection obtenerConexion()
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            return conexion;
        }
    }
}