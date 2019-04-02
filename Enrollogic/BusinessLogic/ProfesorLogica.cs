using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using Entities;

namespace BusinessLogic
{
    /// <summary>
    /// Logica de Profesor, realiza la conexion a la base de datos y creacion de profesor
    /// </summary>
    public class ProfesorLogica
    {
        string connString = "server=LAPTOP-BCKLRFPR\\MSSQLSERVER01 ; database=Enrollogic_DB ; integrated security = true";
        public static List<Profesor> profesores;

        public ProfesorLogica()
        {
            cargarProfesores();
        }

        public void cargarProfesores()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                profesores = conn.Query<Profesor>("Select p.facultad, u.id, u.nombre, u.apellido, u.correo, u.telefono, u.tipo, u.NombreUsuario, u.contrasenna from Profesor p, Usuario u where tipo = 2 AND p.id = u.Id order by u.nombre;").ToList();
            }
        }

        public Profesor crearProfesor(string facultad, int id, string nombre, string apellido, string correo, int telefono, int tipo, string nombreUsuario, string contrasenna)
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

                    sql = "insert into [Enrollogic_DB].[dbo].[Profesor] ([Id], [facultad]) VALUES (@id, @facultad)";
                    var rowsEstudiante = conn.Execute(sql, new
                    {
                        id,
                        facultad
                    });
                }
                cargarProfesores();
                Profesor profesor = new Profesor(facultad, id, nombre, apellido, correo, telefono, tipo, nombreUsuario, contrasenna);
                return profesor;
            }
            return null;
        }

        public Profesor buscarEstudiate(int id)
        {
            foreach (Profesor p in profesores)
            {
                if (id == p.Id)
                {
                    return p;
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
            cargarProfesores();
        }
    }
}
