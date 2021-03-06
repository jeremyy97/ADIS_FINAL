﻿using Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using System.Configuration;
using System.Web.Configuration;

namespace BusinessLogic
{
    /// <summary>
    /// Logica, de usuario, realiza la conexion a la base de datos, busca y actualiza la informacion del usuario
    /// </summary>
    public class UsuarioLogica
    {
        string connString = "server=DESKTOP-RLMMMT7\\SQLEXPRESS ; database=Enrollogic_DB ; integrated security = true";
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
