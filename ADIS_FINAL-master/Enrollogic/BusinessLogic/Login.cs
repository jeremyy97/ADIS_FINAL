using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;

namespace BusinessLogic
{
    /// <summary>
    /// Logica de inicio de sesion para todos los usuarios
    /// </summary>
    public class Login
    {

        public static Usuario usuarioVigente;

        /// <summary>
        /// Verifica el usuario y contrasena con los registros de la base de datos
        /// </summary>
        /// <returns>
        /// devuleve el Usuario en caso de ser encontrado
        /// </returns>
        public Usuario LogIn(string usuario, string contrasenna)
        {
            UsuarioLogica logica = new UsuarioLogica();
            foreach (Usuario u in UsuarioLogica.usuarios)
            {
                if (u.NombreUsuario == usuario && u.Contrasenna == contrasenna)
                {
                    usuarioVigente = u;
                    return u;
                }
            }
            return null;
        }
    }
}
