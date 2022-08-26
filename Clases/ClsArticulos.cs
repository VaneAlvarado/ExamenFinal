using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExamenFinal.Clases
{
    public class ClsArticulos
    {
        private static string codigo { get; set; }
        private static string descripcion { get; set; }
        private static string precio { get; set; }

        private static string costo { get; set; }
        private static string cantidad { get; set; }
        public static void Setcodigo(string cod)
        {
            codigo = cod;
        }

        public static void Setdescripcion(string desc)
        {
           descripcion = desc;
        }
        public static void Setprecio(string p)
        {
            precio = p;
        }
        public static void Setcosto(string c)
        {
            costo = c;
        }

        public static void Setcantidad(string cant)
        {
            cantidad = cant;
        }

        public ClsArticulos()
        {
        }

        public static string Getcodigo() { return codigo; }
        public static string Getdescripcion() { return descripcion; }
        public static string Getprecio() { return precio; }
        public static string Getcantidad() { return cantidad; }



        public static int IngresarArticulo()
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = ClsConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("IngresarArticulos", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@desc", descripcion));
                    cmd.Parameters.Add(new SqlParameter("@c", costo));
                    cmd.Parameters.Add(new SqlParameter("@p", precio));
                    cmd.Parameters.Add(new SqlParameter("@cant", cantidad));

                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            retorno = 1;
                        }
                    }
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }
            return retorno;
        }

        public static int BorrarArticulo()
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = ClsConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("BorrarArticulos", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@codigo", codigo));
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            retorno = 1;
                        }
                    }
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }
            return retorno;
        }


        public static int ActualizarArticulo()
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = ClsConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ActualizarArticulo", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@desc", descripcion));
                    cmd.Parameters.Add(new SqlParameter("@c", costo));
                    cmd.Parameters.Add(new SqlParameter("@p", precio));
                    cmd.Parameters.Add(new SqlParameter("@cant", cantidad));
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            retorno = 1;
                        }
                    }
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }
            return retorno;
        }
    }//
}//