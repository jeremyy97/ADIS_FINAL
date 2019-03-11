using System;
using BusinessLogic;
using Entities;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTest
{
    [TestClass]
    public class ProfesorTest
    {
        [TestMethod]
        public void CargarProfesores()
        {
            ProfesorLogica logica = new ProfesorLogica();
            Assert.IsNotNull(ProfesorLogica.profesores);
        }

        [TestMethod]
        public void CrearUnProfesor()
        {
            ProfesorLogica logica = new ProfesorLogica();
            Profesor profesor;

            profesor = logica.crearProfesor("456", 5, "456", "456", "456", 456, 2, "456", "456");

            Assert.IsNotNull(profesor);
        }
    }
}
