using Dapper;
using Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    /// <summary>
    /// Logica de super administrador, realiza la conexion en la base de datos
    /// </summary>
    public class SAdminLogica
    {
        string connString = "server=DESKTOP-NJ5A176\SQLEXPRESS01 ; database=Enrollogic_DB ; integrated security = true";
        List<SuperAdmin> admin;
        public SAdminLogica()
        {
            
        }

        /// <summary>
        /// realiza la busqueda del super admin con los registros de la base de datos
        /// </summary>
        /// <returns>
        /// devuleve el admin en caso de ser encontrado
        /// </returns>
        public SuperAdmin buscarSAdmin(string usuario, string contrasenna)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                admin = conn.Query<SuperAdmin>("Select * from [Enrollogic_DB].[dbo].[SuperAdmin] where usuario ='" + usuario + "';").ToList();
            }

            foreach(SuperAdmin sa in admin)
            {
                if (sa.Usuario == usuario)
                {
                    return sa;
                }
                
            }
            return null;
        }

    }
}
