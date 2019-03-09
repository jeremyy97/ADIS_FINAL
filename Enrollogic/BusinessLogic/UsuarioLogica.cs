using Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;

namespace BusinessLogic
{
    class UsuarioLogica
    {
        string connString = "server=LAPTOP-BCKLRFPR\\MSSQLSERVER01 ; database=Enrollogic_DB ; integrated security = true";
        public static List<Usuario> usuarios;

        public UsuarioLogica()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                usuarios = conn.Query<Usuario>("SELECT * from [Enrollogic_DB].[dbo].[Usuario];").ToList();
            }
        }
    }
}
