using BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enrollogic
{
    public partial class InformacionPersonal : System.Web.UI.Page
    {
        UsuarioLogica logica = new UsuarioLogica();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtId.Text = BusinessLogic.Login.usuarioVigente.Id.ToString();
                txtNombre.Text = BusinessLogic.Login.usuarioVigente.Nombre;
                txtApellido.Text = BusinessLogic.Login.usuarioVigente.Apellido;
                txtCorreo.Text = BusinessLogic.Login.usuarioVigente.Correo;
                txtTelefono.Text = BusinessLogic.Login.usuarioVigente.Telefono.ToString();
            }
            
        }

        protected void btnActualizarInformacion_Click(object sender, EventArgs e)
        {
            logica.actualizarInformacion(Convert.ToInt32(txtId.Text), txtCorreo.Text, Convert.ToInt32(txtTelefono.Text));
            BusinessLogic.Login.usuarioVigente = logica.buscarUsuario(BusinessLogic.Login.usuarioVigente.Id);
            lblMensaje.Text = "Informacion actualizada";
        }
    }
}