using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using BusinessLogic;
using Entities;

namespace UnitTestProject1
{
    /// <summary>
    /// Summary description for LoginTest
    /// </summary>
    [TestClass]
    public class LoginTest
    {
        [TestMethod]
        public void UnUsuarioPuedeIniciarSesion()
        {
            Login logica = new Login();
            Usuario usuario;

            usuario = logica.LogIn("user","123");

             Assert.IsNotNull(usuario,"Es nulo");
        }
    }
}
