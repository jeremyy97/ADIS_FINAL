using System;
using BusinessLogic;
using Entities;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject1
{
    [TestClass]
    public class EstudianteTest
    {
        [TestMethod]
        public void CargarEstudiantes()
        {
            EstudianteLogica logica = new EstudianteLogica();
            Assert.IsNotNull(EstudianteLogica.estudiantes);
        }


        [TestMethod]
        public void actualizaCorreoYTelefono()
        {
            EstudianteLogica logica = new EstudianteLogica();
            logica.actualizarInformacion(1,"jcerdas@ulacit.ed.cr",60559692);

            Estudiante estudiante = logica.buscarEstudiate(1);

            Assert.AreEqual(estudiante.Correo, "jcerdas@ulacit.ed.cr");
            Assert.AreEqual(estudiante.Telefono, 60559692);
        }
    }
}
