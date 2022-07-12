using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDD_Parquea_YA_RecaldeCristhian.pags
{
    public partial class olvide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try { 
                // Response.Redirect("inicio.aspx");
                String ide = txtId.Text;

                if (ide == "" && txtPassword.Text == "" && txtConfPassword.Text == "")
                {
                    MsgBox("alert", "Ingrese los campo para poder actualizar");
                }
                else if (ide == "")
                {
                    MsgBox("alert", "Ingrese el campo cedula para poder actualizar");
                }
                else if (txtPassword.Text == "")
                {
                    MsgBox("alert", "Ingrese el campo contraseña para poder actualizar");
                }
                else if (txtConfPassword.Text == "")
                {
                    MsgBox("alert", "Ingrese el campo confirmar contraseña para poder actualizar");
                }
                else if (txtPassword != txtConfPassword) {
                    MsgBox("alert", "Las contraseñas no coinciden");
                }
                else
                {
                    MsgBox("alert", "Se ha actualizado satisfactoriamente la contraseña de: " + ide);
                    txtId.Text = "";
                    txtPassword.Text = "";
                    txtConfPassword.Text = "";
                }
            }
            catch (Exception)
            {
                MsgBox("alert", "Error");
            }
        }

        protected void MsgBox(string v_tipo_msg, string v_msg)
        {
            Response.Write("<script language='javascript'>");
            Response.Write(v_tipo_msg + "('" + v_msg + "')");
            Response.Write("</script>");
        }
    }
}