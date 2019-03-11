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
    /// Logica de estudiante, realiza la conexion a la base de datos y creacion de estudiantes
    /// </summary>
    public class EstudianteLogica
    {
        string connString = "server=LAPTOP-BCKLRFPR\\MSSQLSERVER01 ; database=Enrollogic_DB ; integrated security = true";
        public static List<Estudiante> estudiantes;

        public EstudianteLogica()
        {
            cargarEstudiantes();
        }

        public void cargarEstudiantes()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                estudiantes = conn.Query<Estudiante>("Select e.carrera, u.id, u.nombre, u.apellido, u.correo, u.telefono, u.tipo, u.NombreUsuario, u.contrasenna  from Estudiante e, Usuario u where tipo = 1; ").ToList();
            }
        }

        public Estudiante craerEstudiante(string carrera, int id, string nombre, string apellido, string correo, int telefono, int tipo, string nombreUsuario, string contrasenna)
        {
            if(buscarEstudiate(id) == null){
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

                    sql = "insert into [Enrollogic_DB].[dbo].[Estudiante] ([Id], [carrera]) VALUES (@id, @carrera)";
                    var rowsEstudiante = conn.Execute(sql, new
                    {
                        id,
                        carrera
                    });
                }
                cargarEstudiantes();
                Estudiante estudiante = new Estudiante(carrera, id,nombre, apellido, correo,telefono,tipo, nombreUsuario, contrasenna);
                return estudiante;
            }
            return null;
        }

        public Estudiante buscarEstudiate(int id)
        {
            foreach (Estudiante e in estudiantes)
            {
                if(id == e.Id)
                {
                    return e;
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
            cargarEstudiantes();
        }
    }
}
