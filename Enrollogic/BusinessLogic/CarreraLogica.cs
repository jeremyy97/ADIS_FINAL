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
    public class CarreraLogica
    {
        string connString = "server=LAPTOP-BCKLRFPR\\MSSQLSERVER01 ; database=Enrollogic_DB ; integrated security = true";
        public static List<Carrera> carreras = new List<Carrera>();

        public CarreraLogica()
        {
            CargarCarreras();
        }

        public void CargarCarreras()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                carreras = conn.Query<Carrera>("Select id, nombre, descripcion from Carrera order by nombre;").ToList();
            }
        }

        public Carrera CrearCarrera(int id, string nombre, string descripcion)
        {
            Carrera carrera = new Carrera(id, nombre, descripcion);
            string sql = "insert into [Enrollogic_DB].[dbo].[Carrera] ([Id], [Nombre] , [Descripcion]) VALUES (@id, @nombre, @descripcion)";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rowsUsuario = conn.Execute(sql, new
                {
                    carrera.Id,
                    carrera.Nombre,
                    carrera.Descripcion
                });
            }
            CargarCarreras();
            return carrera;
        }

        public Carrera BuscarCurso(int id)
        {
            foreach (Carrera c in carreras)
            {
                if (c.Id == id)
                {
                    return c;
                }
            }
            return null;
        }


    }
}
