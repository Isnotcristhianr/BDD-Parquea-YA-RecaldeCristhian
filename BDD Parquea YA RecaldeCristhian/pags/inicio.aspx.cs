using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDD_Parquea_YA_RecaldeCristhian.pags
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            if (txtUser.Text == "" && txtPassw.Text == "")
            {
                MsgBox("alert", "Ingrese los campos para poder iniciar sesion");
            }
            else if (txtUser.Text == "")
            {
                MsgBox("alert", "Ingrese su usuario para poder iniciar sesion");
            }
            else if (txtPassw.Text == "")
            {
                MsgBox("alert", "Ingrese su contraseña para poder iniciar sesion");
            }
            else
            {
                MsgBox("alert", "Inicio de satisfactorio");
                Response.Redirect("admin.aspx");
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