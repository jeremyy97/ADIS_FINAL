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
    public partial class Matricular : System.Web.UI.Page
    {
        MatriculaLogicacs logica = new MatriculaLogicacs();
        CursoLogica cursoLogica = new CursoLogica();
        List<int> cursosId = new List<int>();
        static List<int> cursosMatricular = new List<int>();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCursos.Text = "";
            string curso = "";
            foreach (Curso c in CursoLogica.cursos)
            {
                curso = c.Id+"."+c.Nombre + "\nProfesor: " + c.Profesor + "\nAula: " + c.Aula + "\n------------------------------\n";
                txtCursos.Text += curso;
                cursosId.Add(c.Id);
            }
        }

        protected void btnAgregarCurso_Click(object sender, EventArgs e)
        {
            Boolean existe = false;
            foreach (int i in cursosMatricular)
            {
                if(Convert.ToInt32(txtCursoId.Text) == i)
                {
                    existe = true;
                }
            }
            if (existe)
            {
                lblMensaje.Text = "El curso que intenta agregar ya se encuentra en la lista";
            }
            else
            {
                string curso = "";
                foreach (int i in cursosId)
                    if (i == Convert.ToInt32(txtCursoId.Text))
                    {
                        foreach (Curso c in CursoLogica.cursos)
                        {
                            if (c.Id == i)
                            {
                                curso = c.Id + "." + c.Nombre + "\nProfesor: " + c.Profesor + "\nAula: " + c.Aula + "\n------------------------------\n";
                                txtCursosMatricularS.Text += curso;
                                cursosMatricular.Add(c.Id);
                            }
                        }
                    }
            }
        }

        protected void btnMatricual_Click(object sender, EventArgs e)
        {
            foreach(int i in cursosMatricular)
            {
                logica.Matricular(i, BusinessLogic.Login.usuarioVigente.Id);
            }
            lblMensaje.Text = "Cursos matriculados con exito";
        }
    }
}