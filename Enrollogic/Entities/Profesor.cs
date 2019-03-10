using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Profesor : Usuario
    {
        public string Facultad { set; get; }

        public Profesor(string facultad, int id, string nombre, string apellido, string correo, int telefono, int tipo, string nombreUsuario, string contrasenna) : base(id, nombre, apellido, correo, telefono, tipo, nombreUsuario, contrasenna)
        {
            Facultad = facultad;
        }
    }
}
