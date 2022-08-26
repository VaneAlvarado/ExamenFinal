using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void bRegistrar_Click(object sender, EventArgs e)
        {
             tNombre.Text = "";
             tContraseña.Text = "";
             dTipo.Text = "";
            if (Clases.ClsUsuarios.IngresarUsuario() < 0)
            {
               
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario ingresado');", true);
                Response.Redirect("login.aspx");
            }
            else
            {

            }
            return;
        }
    }

        }
      