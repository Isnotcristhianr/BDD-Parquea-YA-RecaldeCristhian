using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDD_Parquea_YA_RecaldeCristhian.pags
{
    public partial class registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            //Response.Redirect("inicio.aspx");
            if (cbxAcuerdo.Checked != false)
            {
                MsgBox("alert", "Se ha registrado Usuario");
                txtNombre.Text = "";
                txtApellido.Text = "";
                txtUser.Text = "";
                txtPassword.Text = "";
                txtConfPassword.Text = "";
                txtUbi.Text = "";
                txtTelf.Text = "";
                txtEmail.Text = "";
                txtId.Text = "";
            }
            else {
                MsgBox("alert", "Acepte terminos y condiciones para continuar");

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