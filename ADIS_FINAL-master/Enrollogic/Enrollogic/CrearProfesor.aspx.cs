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
    public partial class crearProfesor : System.Web.UI.Page
    {
        ProfesorLogica logica = new ProfesorLogica();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearProfesor_Click(object sender, EventArgs e)
        {
            Profesor profesor = logica.crearProfesor(txtFacultad.Text, Convert.ToInt32(txtId.Text), txtNombre.Text, txtApellido.Text, txtCorreo.Text, Convert.ToInt32(txtTelefono.Text), 2, txtUsuario.Text, txtContrasenna.Text);
            if (profesor != null)
                lblMensaje.Text = "El profesor " + profesor.Nombre + " " + profesor.Apellido + "(" + profesor.Id + ") fue creado con exito";
            else
                lblMensaje.Text = "Error al crear el profesor.";
        }
    }
}