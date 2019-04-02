using Entities;
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
        BusinessLogic.SAdminLogica Sadmin = new BusinessLogic.SAdminLogica();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            Usuario usuario = login.LogIn(txtUsuario.Text, txtContrasenna.Text);
            if (usuario != null)
            {
                if(usuario.Tipo == 1)
                {
                    Response.Redirect("HomeEstudiante.aspx");
                }
                else
                {
                    if(usuario.Tipo == 2)
                    {
                        Response.Redirect("HomeProfesor.aspx");
                    }
                    else
                    {
                        Response.Redirect("HomeAdministrativo.aspx");
                    }
                }
            }
            else
            {
                if(Sadmin.buscarSAdmin(txtUsuario.Text, txtContrasenna.Text) != null)
                {
                    Response.Redirect("HomeSAdmin.aspx");
                }
            }
        }
    }
}