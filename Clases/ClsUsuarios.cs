using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExamenFinal.Clases
{
    public class ClsUsuarios
    {
        private static int codigo { get; set; }
        private static string nombre { get; set; }
        private static string clave { get; set; }

        private static string Tipo_Usuario { get; set; }
        public static void Setnombre(string nom)
        {
            nombre = nom;
        }

        public static void Setclave(string cl)
        {
            clave = cl;
        }

        public ClsUsuarios(int cod, string nom, string cl, string tipo)
        {
            nombre = nom;
            clave = cl;
            Tipo_Usuario = tipo;
        }
        public ClsUsuarios()
        {
        }
        public static int Getcodigo() { return codigo; }
        public static string Getnombre() { return nombre; }
        public static string Getclave() { return clave; }
        public static string GetTipo_Usuario() { return Tipo_Usuario; }

        public static int IngresarUsuario()
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = ClsConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("IngresarUsuarios", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@nom", nombre));
                    cmd.Parameters.Add(new SqlParameter("@cl", clave));
                    cmd.Parameters.Add(new SqlParameter("@tipo", Tipo_Usuario));

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

        public static int BorrarUsuario()
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = ClsConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand(" BorrarUsuarios", Conn)
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


        public static int ActualizarUsuario()
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = ClsConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ActualizarUsuarios", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@cl", clave));
                    cmd.Parameters.Add(new SqlParameter("@nom", nombre));
                    cmd.Parameters.Add(new SqlParameter("@tu", Tipo_Usuario));
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

        public static Boolean login()
        {
            Boolean existe = false;
            SqlConnection conn = new SqlConnection();
            try
            {
                using (conn = Clases.ClsConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("Login", conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@cl", clave));
                    cmd.Parameters.Add(new SqlParameter("@nom", nombre));
                    cmd.ExecuteNonQuery();
                    existe = true;
                }
            }
            catch (Exception)
            {
                conn.Close();
            }
            finally
            {
                conn.Close();
            }
            return existe;
        }
     
    }//
}//

