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
    class PreferenciaLogica
    {
        string connString = "server=LAPTOP-BCKLRFPR\\MSSQLSERVER01 ; database=Enrollogic_DB ; integrated security = true";
        public static List<Preferencia> preferencias;

        public void cargarPreferencias()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                preferencias = conn.Query<Preferencia>("Select id, estudiante, dia, hora, cede  from Preferencia;").ToList();
            }
        }

        public void actualizarPreferencias(int usuario, List<Preferencia> preferencias)
        {
            string sql = "delete from [Enrollogic_DB].[dbo].[Preferencia] where estudiante = @usuario";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rowsDelete = conn.Execute(sql, new
                {
                    estudiante = usuario
                });


                sql = "insert into [Enrollogic_DB].[dbo].Preferencia  ([id], [estudiante], [dia] , [hora] , [cede]) VALUES (@id, @estudiante, @dia,@hora, @cede)";
                foreach (Preferencia p in preferencias)
                {
                    var rowsAdd = conn.Execute(sql, new
                    {
                        p.id,
                        p.estudiante,
                        p.dia,
                        p.hora,
                        p.cede
                    });
                }
            }
        }

        public List<Preferencia> buscarPreferencias(int id)
        {
            List<Preferencia> Lpreferencias = new List<Preferencia>();
            foreach(Preferencia p in preferencias)
            {
                if(p.id == id)
                {
                    Lpreferencias.Add(p);
                }
            }
            return Lpreferencias;
        }
    }
}
