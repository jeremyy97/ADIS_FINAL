using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Matricula
    {
        public string Curso { set; get; }
        public string Estudiante { set; get; }
        public int Nota { set; get; }
        public string Profesor { set; get; }

        public Matricula(string curso, string estudiante, int nota, string profesor)
        {
            Curso = curso;
            Estudiante = estudiante;
            Nota = nota;
            Profesor = profesor;
        }
    }
}
