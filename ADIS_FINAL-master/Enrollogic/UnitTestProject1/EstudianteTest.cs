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
        public void CrearUnEstudiante()
        {
            EstudianteLogica logica = new EstudianteLogica();
            Estudiante estudiante;

            estudiante = logica.craerEstudiante("123",4,"123","123","123",123,1,"123","123");

            Assert.IsNotNull(estudiante);
        }

    }
}
