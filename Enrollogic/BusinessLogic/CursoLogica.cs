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
    class CursoLogica
    {
        string connString = "server=LAPTOP-BCKLRFPR\\MSSQLSERVER01 ; database=Enrollogic_DB ; integrated security = true";
        public static List<Curso> cursos = new List<Curso>();

        public CursoLogica()
        {
            CargarCursos();
        }

        public void CargarCursos()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                cursos = conn.Query<Curso>("Select id, codigo, nombre, carrera, periodo, descripcion, aula, profesor from Curso;").ToList();
            }
        }

        public Curso CrearCurso(int id, string codigo, string nombre, string carrera, string periodo, string descripcion, string aula)
        {
            Curso curso = new Curso(id, codigo, nombre, carrera, periodo, descripcion, aula, "No asignado");
            string sql = "insert into [Enrollogic_DB].[dbo].[Curso] ([Id], [Codigo], [Nombre] , [Carrera] , [Periodo] , [Descripcion] , [Aula], [Profesor]) VALUES (@id, @codigo, @nombre, @carrera, @periodo, @descripcion, @aula, @profesor)";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rowsUsuario = conn.Execute(sql, new
                {
                    curso.Id,
                    curso.Codigo,
                    curso.Nombre,
                    curso.Carrera,
                    curso.Periodo,
                    curso.Descripcion,
                    curso.Aula,
                    curso.Profesor
                });
            }
            CargarCursos();
            return curso;
        }

        public Curso AsignarProfesor(string profesor, int curso)
        {
            string sql = "update [Enrollogic_DB].[dbo].[Curso] set Profesor = @profesor where id = @id";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rows = conn.Execute(sql, new
                {
                    Id = curso,
                    Profesor = profesor
                });
            }
            CargarCursos();
            return BuscarCurso(curso);
        }

        public Curso BuscarCurso(int id)
        {
            foreach(Curso c in cursos)
            {
                if(c.Id == id)
                {
                    return c;
                }
            }
            return null;
        }

    }
}
