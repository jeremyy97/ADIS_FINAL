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
    class AdministrativoLogica
    {
        string connString = "server=LAPTOP-BCKLRFPR\\MSSQLSERVER01 ; database=Enrollogic_DB ; integrated security = true";
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
                string sql = "insert into [Enrollogic_DB].[dbo].[Usuario] ([Id], [Nombre], [Apellido] , [Correo] , [Telefono] , [Tipo] , [NomnbreUsuario], [Contrasenna]) VALUES (@id, @nombre, @apellido, @correo, @correo, @type, @nombreUsuario, @contrasenna)";
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

                    sql = "insert into [Enrollogic_DB].[dbo].[Administrador] ([Id], [cargo]) VALUES (@id, @cargo)";
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
    }
}
