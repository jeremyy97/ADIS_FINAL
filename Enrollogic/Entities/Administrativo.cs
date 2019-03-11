using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    /// <summary>
    /// Entidad Administrativo, hereda de Usuario
    /// </summary>
    public class Administrativo : Usuario
    {
        public string Cargo { set; get; }

        public Administrativo(string cargo, int id, string nombre, string apellido, string correo, int telefono, int tipo, string nombreUsuario, string contrasenna) : base(id, nombre, apellido, correo, telefono, tipo, nombreUsuario, contrasenna)
        {
            Cargo = cargo;
        }
    }
}
