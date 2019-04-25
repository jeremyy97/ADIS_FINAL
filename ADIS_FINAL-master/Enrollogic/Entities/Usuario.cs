using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    /// <summary>
    /// Entidad Usuario, clase padre de Estudiante, Profesor y Administrativo
    /// </summary>
    public class Usuario
    {
        public int Id { set; get; }
        public string Nombre { set; get; }
        public string Apellido { set; get; }
        public string Correo { set; get; }
        public int Telefono { set; get; }
        public int Tipo { set; get; }
        public string NombreUsuario { set; get; }
        public string Contrasenna { set; get; }

        public Usuario(int id, string nombre, string apellido, string correo, int telefono, int tipo, string nombreUsuario, string contrasenna)
        {
            Id = id;
            Nombre = nombre;
            Apellido = apellido;
            Correo = correo;
            Telefono = telefono;
            Tipo = tipo;
            NombreUsuario = nombreUsuario;
            Contrasenna = contrasenna;
        }
    }
}
