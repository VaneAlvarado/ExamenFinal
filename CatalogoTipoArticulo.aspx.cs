using ExamenFinal.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal
{
    public partial class CatalogoTipoArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bIngresar_Click(object sender, EventArgs e)
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = ClsConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("IngresarTipoArticulo", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@descripcion", tDescripcion.Text));
                    cmd.Parameters.Add(new SqlParameter("@codigo", tCodigo.Text));
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
            SqlDataSource1.DataBind();
        }

        protected void bBorrar_Click(object sender, EventArgs e)
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = ClsConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("BorrarTipoArticulo", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@codigo", tCodigo.Text));
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
            SqlDataSource1.DataBind();
        }

        protected void bActualizar_Click(object sender, EventArgs e)
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
                    cmd.Parameters.Add(new SqlParameter("@descripcion", tDescripcion.Text));
                    cmd.Parameters.Add(new SqlParameter("@codigo", tCodigo.Text));
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
            SqlDataSource1.DataBind();
        }
}
}