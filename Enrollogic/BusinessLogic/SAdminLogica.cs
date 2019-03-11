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
    public class SAdminLogica
    {
        string connString = "server=LAPTOP-BCKLRFPR\\MSSQLSERVER01 ; database=Enrollogic_DB ; integrated security = true";
        List<SuperAdmin> admin;
        public SAdminLogica()
        {
            
        }

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
