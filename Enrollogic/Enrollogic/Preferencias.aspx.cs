using BusinessLogic;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Enrollogic
{
    public partial class Preferencias : System.Web.UI.Page
    {
        PreferenciaLogica logica = new PreferenciaLogica();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnActualizarPreferencias_Click(object sender, EventArgs e)
        {
            int usuario = BusinessLogic.Login.usuarioVigente.Id;
            List<Preferencia> preferencias = new List<Preferencia>();
            preferencias.Add(new Preferencia(1, usuario,"Lunes",ddlLunesHora.SelectedItem.Text,ddlLunesCede.SelectedItem.Text));
            preferencias.Add(new Preferencia(2, usuario, "Martes", ddlMartesHora.SelectedItem.Text, ddlMartesCede.SelectedItem.Text));
            preferencias.Add(new Preferencia(3, usuario, "Miercoles", ddlMiercolesHora.SelectedItem.Text, ddlMiercolesCede.SelectedItem.Text));
            preferencias.Add(new Preferencia(4, usuario, "Jueves", ddlJuevesHora.SelectedItem.Text, ddlJuevesCede.SelectedItem.Text));
            preferencias.Add(new Preferencia(5, usuario, "Viernes", ddlViernesHora.SelectedItem.Text, ddlViernesCede.SelectedItem.Text));
            preferencias.Add(new Preferencia(6, usuario, "Sabado", ddlSabadoHora.SelectedItem.Text, ddlSabadoCede.SelectedItem.Text));
            logica.actualizarPreferencias(BusinessLogic.Login.usuarioVigente.Id,preferencias);
            lblMensaje.Text = "Preferencias actualizadas";
        }
    }
}