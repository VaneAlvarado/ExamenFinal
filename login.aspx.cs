using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void tclave_TextChanged(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
            Clases.ClsUsuarios.Setnombre(tusuario.Text);
            Clases.ClsUsuarios.Setclave( tclave.Text);
                if (Clases.ClsUsuarios.login())
                {
                 ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario ingresado');", true);
                 tusuario.Text = "";
                 tclave.Text = "";
                 Response.Redirect("Menu.aspx");
            }
            else
            {
             ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario o clave incorrecta');", true);
            }
        }
    }
}
