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
    /// Logica de administrador, realiza la conexion a la base de datos y creacion de administrativos
    /// </summary>
    public class AdministrativoLogica
    {
        string connString = "server=DESKTOP-RLMMMT7\\SQLEXPRESS ; database=Enrollogic_DB ; integrated security = true";
        public static List<Administrativo> administrativos;

        public AdministrativoLogica()
        {
            cargarAdministrativos();
        }

        public void cargarAdministrativos()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                administrativos = conn.Query<Administrativo>("Select a.cargo, u.id, u.nombre, u.apellido, u.correo, u.telefono, u.tipo, u.NombreUsuario, u.contrasenna  from Administrativo a, Usuario u where tipo = 3; ").ToList();
            }
        }

        public Administrativo crearAdministrador(string cargo, int id, string nombre, string apellido, string correo, int telefono, int tipo, string nombreUsuario, string contrasenna)
        {
            if (buscarEstudiate(id) == null)
            {
                string sql = "insert into [Enrollogic_DB].[dbo].[Usuario] ([Id], [Nombre], [Apellido] , [Correo] , [Telefono] , [Tipo] , [NombreUsuario], [Contrasenna]) VALUES (@id, @nombre, @apellido, @correo, @telefono, @tipo, @nombreUsuario, @contrasenna)";
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    var rowsUsuario = conn.Execute(sql, new
                    {
                        id,
                        nombre,
                        apellido,
                        correo,
                        telefono,
                        tipo,
                        nombreUsuario,
                        contrasenna
                    });

                    sql = "insert into [Enrollogic_DB].[dbo].[Administrativo] ([Id], [cargo]) VALUES (@id, @cargo)";
                    var rowsEstudiante = conn.Execute(sql, new
                    {
                        id,
                        cargo
                    });
                }
                cargarAdministrativos();
                Administrativo administrativo = new Administrativo(cargo, id, nombre, apellido, correo, telefono, tipo, nombreUsuario, contrasenna);
                return administrativo;
            }
            return null;
        }

        public Administrativo buscarEstudiate(int id)
        {
            foreach (Administrativo a in administrativos)
            {
                if (id == a.Id)
                {
                    return a;
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
            cargarAdministrativos();
        }
    }
}
