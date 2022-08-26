using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal
{
    public partial class CatalogoUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bIngresar_Click(object sender, EventArgs e)
        {
            // Clases.ClsArticulos cs = new Clases.ClsArticulos(tDescripcion.Text, tPrecio.Text, tCodigo.Text,tCosto.Text,tCantidad.Text);
            tNombre.Text = "";
            tCodigo.Text = "";
            tClave.Text = "";
            try
            {
                if (Clases.ClsUsuarios.IngresarUsuario() > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification :Usuario ingresado');", true);
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
            tNombre.Text = "";
            tCodigo.Text = "";
            tClave.Text = "";
            dTipo.Text = "";
            try
            {
                if ((Clases.ClsUsuarios.BorrarUsuario() > 0))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification :Usuario borrado');", true);
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
           // Clases.ClsArticulos cs = new Clases.ClsArticulos(tArticulo.Text, tDescripcion.Text, tPrecio.Text, tCodigo.Text, tCosto.Text, tCantidad.Text);
            tNombre.Text = "";
            tCodigo.Text = "";
            tClave.Text = "";
            dTipo.Text = "";
            try
            {
                if (Clases.ClsUsuarios.ActualizarUsuario() > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification :Usuario actualizado');", true);
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
    