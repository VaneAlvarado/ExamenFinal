using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal
{
    public partial class ReporteArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}