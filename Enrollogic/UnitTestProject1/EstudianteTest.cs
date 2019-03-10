using System;
using BusinessLogic;
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
    }
}
