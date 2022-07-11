using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;

namespace BDD_Parquea_YA_RecaldeCristhian.pags
{
    
    public partial class clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!Page.IsPostBack)
                {
                if (!Page.IsPostBack)
                {

                }
            }
            }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            MsgBox("alert", "Se ha creado el cliente");
            txtCedula.Text = "";
        }

        //
        protected void MsgBox(string v_tipo_msg, string v_msg)
        {
            Response.Write("<script language='javascript'>");
            Response.Write(v_tipo_msg + "('" + v_msg + "')");
            Response.Write("</script>");
        }
    }
}