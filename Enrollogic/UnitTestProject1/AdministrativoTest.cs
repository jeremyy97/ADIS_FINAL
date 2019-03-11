using System;
using BusinessLogic;
using Entities;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTest
{
    [TestClass]
    public class AdministrativoTest
    {
        [TestMethod]
        public void CargarAdministrativos()
        {
            AdministrativoLogica logica = new AdministrativoLogica();
            Assert.IsNotNull(AdministrativoLogica.administrativos);
        }

        [TestMethod]
        public void CrearUnAdministrativo()
        {
            AdministrativoLogica logica = new AdministrativoLogica();
            Administrativo administrativo;

            administrativo = logica.crearAdministrador("789", 6, "789", "789", "789", 789, 3, "789", "789");

            Assert.IsNotNull(administrativo);
        }
    }
}
