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
    public class UsuarioLogica
    {
        string connString = "server=LAPTOP-BCKLRFPR\\MSSQLSERVER01 ; database=Enrollogic_DB ; integrated security = true";
        public static List<Usuario> usuarios;

        public UsuarioLogica()
        {
            cargarUsuarios();
        }

        public void cargarUsuarios()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                usuarios = conn.Query<Usuario>("SELECT Id, Nombre, Apellido, Correo, Telefono, Tipo, NombreUsuario, Contrasenna from [Enrollogic_DB].[dbo].[Usuario];").ToList();
            }
        }

        public Usuario buscarUsuario(int id)
        {
            foreach(Usuario u in usuarios)
            {
                if(u.Id == id)
                {
                    return u;
                }
            }
            return null;
        }

        public void actualizarInformacion(int id, string correo, int telefono)
        {
            string sql = "update [Enrollogic_DB].[dbo].[Usuario] set Correo = @correo, Telefono = @telefono where Id = @id";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rows = conn.Execute(sql, new
                {
                    Id = id,
                    Correo = correo,
                    Telefono = telefono
                });
            }
            cargarUsuarios();
        }
    }
}
