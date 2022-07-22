using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//usings
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace BDD_Parquea_YA_RecaldeCristhian.pags
{
    public partial class cobros : System.Web.UI.Page
    {
        Acc datos = new Acc();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
            txtbFecha.Text = DateTime.Now.ToShortDateString();
            txtbFecha.Enabled = false;
            txtCedula.Text = "";
            txtApellido.Text = "";
            txtbFecha.Text = "";
            txtDireccion.Text = "";
            txtEmail.Text = "";
            txtNombre.Text = "";
            txtTelefono.Text = "";

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
                    //validacion
                    DataSet dsDatos = datos.VerificarAutoCedulaClientes(txtCedula.Text);
                    if (dsDatos.Tables[0].Rows.Count > 0)
                    {
                        //inner join con ceds
                        dsDatos = datos.innerJoinFacturar(txtCedula.Text);

                        MsgBox("alert", "Se ha facturado correctamente para: " + txtCedula.Text);
                        txtCedula.Text = "";
                    }
                    else
                    {
                        MsgBox("alert", "Cedula no existe");
                        txtCedula.Text = "";
                        txtApellido.Text = "";
                        txtbFecha.Text = "";
                        txtDireccion.Text = "";
                        txtEmail.Text = "";
                        txtNombre.Text = "";
                        txtTelefono.Text = "";
                    }
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

        protected void imgPrint_Click(object sender, ImageClickEventArgs e)
        {

            string popupScript = "<script language='javascript'>" +
            "window.print('cobros.aspx', 'CustomPopUp', " +
         "'width=850, height=350, menubar=no,scrollbars=yes, resizable=yes')" +
        "</script>";

            Page.RegisterStartupScript("PopupScript", popupScript);

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            MsgBox("alert", "click cb");

        }
    }
}