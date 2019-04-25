using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Curso
    {
        public int Id { set; get; }
        public string Codigo { set; get; }
        public string Nombre { set; get; }
        public string Carrera { set; get; }
        public string Periodo { set; get; }
        public string Descripcion { set; get; }
        public string Aula { set; get; }
        public string Profesor { set; get; }


        public Curso(int id, string codigo, string nombre, string carrera, string periodo, string descripcion, string aula, string profesor)
        {
            Id = id;
            Codigo = codigo;
            Nombre = nombre;
            Carrera = carrera;
            Periodo = periodo;
            Descripcion = descripcion;
            Aula = aula;
            Profesor = profesor;
            
        }
    }
}
