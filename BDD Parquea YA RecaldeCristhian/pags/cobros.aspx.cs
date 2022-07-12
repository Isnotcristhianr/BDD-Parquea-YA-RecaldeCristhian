using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDD_Parquea_YA_RecaldeCristhian.pags
{
    public partial class cobros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
            txtbFecha.Text = DateTime.Now.ToShortDateString();
            txtbFecha.Enabled = false;

        }

        protected void btnFacturar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtCedula.Text == "")
                {
                    MsgBox("alert", "Ingrese la cedula para poder facturar");
                }
                else
                {
                    MsgBox("alert", "Se ha facturado correctamente para: " + txtCedula.Text);
                    txtCedula.Text = "";
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