using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;
using Entities;

namespace Enrollogic
{
    public partial class EditarCurso : System.Web.UI.Page
    {
        CursoLogica logica = new CursoLogica();
        ProfesorLogica profesorLogica = new ProfesorLogica();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Curso curso = logica.BuscarCurso(Convert.ToInt32(txtCursoId.Text));
            if (curso != null)
            {
                txtId.Text = Convert.ToString(curso.Id);
                txtCodigo.Text = curso.Codigo;
                txtNombre.Text = curso.Nombre;
                txtCarrera.Text = curso.Carrera;
                txtPeriodo.Text = curso.Periodo;
                txtDescripcion.Text = curso.Descripcion;
                txtAula.Text = curso.Aula;
                ListItem profesor;
                foreach (Profesor p in ProfesorLogica.profesores)
                {
                    profesor = new ListItem();
                    profesor.Text = p.Nombre + p.Apellido + " (" + p.Id + ")";
                    profesor.Value = Convert.ToString(p.Id);
                    ddlProfesores.Items.Add(profesor);
                }
                ddlProfesores.SelectedItem.Text = curso.Profesor;
            }
            else
            {
                lblBusqueda.Text = "El ID ingresado no coincide con ninguno de los cursos en el sistema";
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if(logica.EditarInformacionCurso(Convert.ToInt32(txtId.Text),txtDescripcion.Text, txtAula.Text, ddlProfesores.SelectedItem.Value) != null)
            {
                lblMensaje.Text = "Curso " + txtNombre.Text + " actualizado correctamente";
            }
        }
    }
}