using BusinessLogic;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enrollogic
{
    public partial class CrearAdministrativo : System.Web.UI.Page
    {
        AdministrativoLogica logica = new AdministrativoLogica();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearAdministrativo_Click(object sender, EventArgs e)
        {
            Administrativo administrativo = logica.crearAdministrador(txtCargo.Text, Convert.ToInt32(txtId.Text), txtNombre.Text, txtNombre.Text, txtCorreo.Text, Convert.ToInt32(txtTelefono.Text), 1, txtUsuario.Text, txtContrasenna.Text);
            if (administrativo != null)
                lblMensaje.Text = "El administrativo " + administrativo.Nombre + " " + administrativo.Apellido + "(" + administrativo.Id + ") fue creado con exito";
            else
                lblMensaje.Text = "Error al crear el profesor.";
        }
    }
}