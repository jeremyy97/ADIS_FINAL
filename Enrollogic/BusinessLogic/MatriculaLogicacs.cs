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
    public class MatriculaLogicacs
    {
        string connString = "server=LAPTOP-BCKLRFPR\\MSSQLSERVER01 ; database=Enrollogic_DB ; integrated security = true";
        public static List<Matricula> matriculas = new List<Matricula>();
        public static List<Matricula> matriculasID = new List<Matricula>();

        public MatriculaLogicacs()
        {
            CargarMatriculas();
            cargarMatriculasId();
        }

        public void CargarMatriculas()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                matriculas = conn.Query<Matricula>("select c.nombre as curso, concat(concat(u.nombre, ' '), u.Apellido) as estudiante, m.nota, concat(concat(p.nombre, ' '), p.Apellido) as profesor from matricula m, curso c, usuario u, usuario p where c.id = m.curso AND p.id = m.profesor AND u.id = m.estudiante;").ToList();
            }
        }

        public void cargarMatriculasId()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                matriculasID = conn.Query<Matricula>("select CAST(curso as varchar(30)) as curso , CAST(estudiante as varchar(30)) as estudiante, nota, CAST(profesor as varchar(30)) as profesor from matricula;").ToList();
            }
        }

        public Boolean Matricular(int curso, int estudiante)
        {
            int nota = 0;
            

            string sql = "insert into [Enrollogic_DB].[dbo].[Matricula] ([curso], [estudiante], [Nota] , [Profesor]) VALUES (@curso, @estudiante, @nota, (select profesor from curso where id = @curso))";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rowsUsuario = conn.Execute(sql, new
                {
                    curso,
                    estudiante,
                    nota
                });
            }
            CargarMatriculas();
            return true;
        }

        

        public Matricula AsignarNota(int curso, int estudiante, int nota)
        {
            Matricula matricula = new Matricula(Convert.ToString(curso),Convert.ToString(estudiante),nota,"");
            string sql = "update [Enrollogic_DB].[dbo].[Matricula] set nota = @nota where curso = @curso AND estudiante = @estudiante";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rows = conn.Execute(sql, new
                {
                    Curso = curso,
                    Estudiante = estudiante,
                    Nota = nota
                });
            }
            CargarMatriculas(); 
            cargarMatriculasId();
            return matricula;
        }
    }
}
