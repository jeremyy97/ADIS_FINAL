using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class Login
    {
        public Usuario LogIn(string usuario, string contrasenna)
        {
            UsuarioLogica logica = new UsuarioLogica();
            foreach (Usuario u in UsuarioLogica.usuarios)
            {
                if (u.NombreUsuario == usuario && u.Contrasenna == contrasenna)
                {
                    return u;
                }
            }
            return null;
        }
    }
}
