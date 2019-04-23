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
    public class CursoLogica
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
                cursos = conn.Query<Curso>("Select c.id, c.codigo, c.nombre , c.carrera, c.periodo, c.descripcion, c.aula, concat(concat(p.nombre, ' '), p.Apellido)  as profesor, dia, hora from Curso c, usuario p where c.profesor = p.Id AND c.id != 3 order by dia;").ToList();
            }
        }

        public Curso CrearCurso(int id, string codigo, string nombre, string carrera, string periodo, string descripcion, string aula, string profesor,string dia, string hora)
        {
            Curso curso = new Curso(id, codigo, nombre, carrera, periodo, descripcion, aula, profesor, dia, hora);
            string sql = "insert into [Enrollogic_DB].[dbo].[Curso] ([Id], [Codigo], [Nombre] , [Carrera] , [Periodo] , [Descripcion] , [Aula], [Profesor], [Dia], [Hora]) VALUES (@id, @codigo, @nombre, @carrera, @periodo, @descripcion, @aula, @profesor, @dia, @hora)";
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
                    curso.Profesor,
                    curso.Dia,
                    curso.Hora
                });
            }
            CargarCursos();
            return curso;
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

        public Curso EditarInformacionCurso(int id, string descripcion, string aula, string profesor)
        {
            string sql = "update [Enrollogic_DB].[dbo].[Curso] set Profesor = @profesor, Descripcion = @descripcion, Aula = @aula where id = @id";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rows = conn.Execute(sql, new
                {
                    Id = id,
                    Profesor = profesor,
                    Descripcion = descripcion,
                    Aula = aula
                });
            }
            CargarCursos();
            return BuscarCurso(id);
        }

    }
}
