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
    public partial class CrearUsuarios : System.Web.UI.Page
    {
        EstudianteLogica logica = new EstudianteLogica();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearEstudiante_Click(object sender, EventArgs e)
        {
            Estudiante estudiante = logica.craerEstudiante(txtCarrera.Text,Convert.ToInt32(txtId.Text), txtNombre.Text, txtNombre.Text, txtCorreo.Text, Convert.ToInt32(txtTelefono.Text), 1, txtUsuario.Text, txtContrasenna.Text);
            if(estudiante != null)
            lblMensaje.Text = "El estudiante " + estudiante.Nombre + " " + estudiante.Apellido + "("+estudiante.Id+") fue creado con exito";
            else
                lblMensaje.Text = "Error al crear el estudiante.";
        }
    }
}