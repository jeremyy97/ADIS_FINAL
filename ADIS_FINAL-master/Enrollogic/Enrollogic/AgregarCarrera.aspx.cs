using BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enrollogic
{
    public partial class AgregarCarrera : System.Web.UI.Page
    {
        CarreraLogica logica = new CarreraLogica();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text != "" && txtId.Text != "" && txtDescripcion.Text != "")
            {
                if (logica.CrearCarrera(Convert.ToInt32(txtId.Text), txtNombre.Text, txtDescripcion.Text) != null)
                {
                    lblMensaje.Text = "La carrera " + txtNombre.Text + " se ha creado con éxito en el sistema.";
                }
            }
            else
            {
                lblMensaje.Text = "Debe llenar todos los espacios";
            }
            
                
        }
    }
}