using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Usuario
    {
        int id { set; get; }
        string nombre { set; get; }
        string apellido { set; get; }
        string correo { set; get; }
        string telefono { set; get; }
        int tipo { set; get; }
        public string usuario { set; get; }
        public string contrasenna { set; get; }

        public Usuario()
        {

        }
    }
}
