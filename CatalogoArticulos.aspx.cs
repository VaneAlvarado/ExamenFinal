using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal
{
    public partial class CatalogoArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bIngresar_Click(object sender, EventArgs e)
        {
         // Clases.ClsArticulos cs = new Clases.ClsArticulos(tDescripcion.Text, tPrecio.Text, tCodigo.Text,tCosto.Text,tCantidad.Text);
            tDescripcion.Text = "";
            tPrecio.Text = "";
            tCodigo.Text = "";
            tCosto.Text = "";
            tCantidad.Text = "";
            try
            {
                if (Clases.ClsArticulos.IngresarArticulo() > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification :Articulo ingresado');", true);
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification :Revise su conexion');", true);
            }
            finally
            {
                SqlDataSource1.DataBind();
            }
        }

        protected void bBorrar_Click(object sender, EventArgs e)
        {
     //    Clases.ClsArticulos cs = new Clases.ClsArticulos(tArticulo.Text, tDescripcion.Text, tPrecio.Text, tCodigo.Text,tCosto.Text,tCantidad.Text);
            tDescripcion.Text = "";
            tPrecio.Text = "";
            tCodigo.Text = "";
            tCosto.Text = "";
            tCantidad.Text = "";
            try
            {
                if ((Clases.ClsArticulos.BorrarArticulo() > 0))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification :Articulo borrado');", true);
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification :Revise su conexion');", true);
            }
            finally
            {
                SqlDataSource1.DataBind();
            }
        }

        protected void bActualizar_Click(object sender, EventArgs e)
        {
     //    Clases.ClsArticulos cs = new Clases.ClsArticulos(tArticulo.Text, tDescripcion.Text, tPrecio.Text, tCodigo.Text,tCosto.Text,tCantidad.Text);
            tDescripcion.Text = "";
            tPrecio.Text = "";
            tCodigo.Text = "";
            tCosto.Text = "";
            tCantidad.Text = "";
            try
            {
                if (Clases.ClsArticulos.ActualizarArticulo() > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification :Autor actualizado');", true);
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification :Revise su conexion');", true);
            }
            finally
            {
                SqlDataSource1.DataBind();
            }
        }
    }
}