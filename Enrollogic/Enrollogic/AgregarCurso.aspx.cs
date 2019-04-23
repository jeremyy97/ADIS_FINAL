using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;
namespace Enrollogic
{
    public partial class AgregarCurso : System.Web.UI.Page
    {
        CursoLogica logica = new CursoLogica();
        protected void Page_Load(object sender, EventArgs e)
        {
            ProfesorLogica profesorLogica = new ProfesorLogica();
            CarreraLogica carreraLogica = new CarreraLogica();
            ListItem profesor;
            ListItem carrera;

            foreach (Profesor p in ProfesorLogica.profesores)
            {
                profesor = new ListItem();
                profesor.Text = p.Nombre + " "+ p.Apellido + " (" + p.Id + ")" ;
                profesor.Value = Convert.ToString(p.Id);
                ddlProfesores.Items.Add(profesor);
            }

            foreach (Entities.Carrera c in CarreraLogica.carreras)
            {
                carrera = new ListItem();
                carrera.Text = c.Nombre;
                carrera.Value = Convert.ToString(c.Id);
                ddlCarreras.Items.Add(carrera);
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if(logica.CrearCurso(Convert.ToInt32(txtId.Text), txtCodigo.Text, txtNombre.Text, ddlCarreras.SelectedItem.Text, txtPeriodo.Text, txtDescripcion.Text, txtAula.Text, ddlProfesores.SelectedItem.Value, ddlDias.SelectedItem.Value, ddlHoras.SelectedItem.Value) != null)
            {
                lblMensaje.Text = "El curso " + txtNombre.Text + " fue creado con éxito en el sistema";
            }
            
        }
    }
}