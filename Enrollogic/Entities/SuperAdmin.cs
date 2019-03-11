using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class SuperAdmin
    {
        public string Usuario { set; get; }
        public string Contrasenna { set; get; }


        public SuperAdmin(string usuario, string contrasenna)
        {
            Usuario = usuario;
            Contrasenna = contrasenna;
        }
    }

}
