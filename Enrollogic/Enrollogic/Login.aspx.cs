using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enrollogic
{
    public partial class Login : System.Web.UI.Page
    {
        BusinessLogic.Login login = new BusinessLogic.Login();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            if (login.LogIn(txtUsuario.Text, txtContrasenna.Text) != null)
            {
                Response.Redirect("Index.aspx");
            }
        }
    }
}