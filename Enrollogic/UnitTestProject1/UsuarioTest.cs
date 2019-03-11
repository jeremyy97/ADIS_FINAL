using System;
using BusinessLogic;
using Entities;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject1
{
    [TestClass]
    public class UsuarioTest
    {
        [TestMethod]
        public void actualizaCorreoYTelefono()
        {
            UsuarioLogica logica = new UsuarioLogica();
            logica.actualizarInformacion(1, "jcerdas@ulacit.ed.cr", 60559692);

            Usuario usuario = logica.buscarUsuario(1);

            Assert.AreEqual(usuario.Correo, "jcerdas@ulacit.ed.cr");
            Assert.AreEqual(usuario.Telefono, 60559692);
        }
    }
}
