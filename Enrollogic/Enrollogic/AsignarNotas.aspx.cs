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
    public partial class AsignarNotas : System.Web.UI.Page
    {
        MatriculaLogicacs logica = new MatriculaLogicacs();
        static string selectedValue = "0";
        static ListItem selectedItem = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ddlCursos.SelectedItem != null)
            {
                selectedValue = ddlCursos.SelectedItem.Value;
            }
            ListItem defecto = new ListItem();
            defecto.Value = "0";
            defecto.Text = "Seleccione un curso";
            ddlCursos.Items.Add(defecto);
            ListItem curso;
            int cont = 0;
            foreach (Matricula matricula in MatriculaLogicacs.matriculasID)
            {
                if(Convert.ToInt32(matricula.Profesor) == BusinessLogic.Login.usuarioVigente.Id)
                {
                    curso = new ListItem();
                    curso.Value = matricula.Curso;
                    curso.Text = MatriculaLogicacs.matriculas[cont].Curso;
                    if (!ddlCursos.Items.Contains(curso))
                    {
                        ddlCursos.Items.Add(curso);
                    }
                }
                cont++;
            }
        }

        protected void ddlCursos_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtEstudiantes.Text = "";
            int cont = 0;
            foreach (Matricula matricula in MatriculaLogicacs.matriculasID)
            {
                if (Convert.ToInt32(matricula.Profesor) == BusinessLogic.Login.usuarioVigente.Id)
                {
                    if (selectedValue == matricula.Curso)
                    {
                        txtEstudiantes.Text += "ID: " + matricula.Estudiante + ". Nombre: " + MatriculaLogicacs.matriculas[cont].Estudiante;
                    }
                }
                cont++;
            }
        }

        protected void ddlCursos_TextChanged(object sender, EventArgs e)
        {
         
        }

        protected void btnNota_Click(object sender, EventArgs e)
        {
            if(logica.AsignarNota(Convert.ToInt32(selectedValue), Convert.ToInt32(txtEstudiante.Text), Convert.ToInt32(txtNota.Text)) != null)
            {
                lblMensaje.Text = "La nota se actualizo con exito.";
            }
        }
    }
}