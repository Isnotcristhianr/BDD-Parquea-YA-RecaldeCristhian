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

                }
            }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            try { 
                if (txtCedula.Text == "" && txtNombre.Text == "" && txtApellido.Text == "" && txtDireccion.Text == "" && txtDireccion.Text == "" && txtEmail.Text == "")
                {
                    MsgBox("alert", "Ingrese los datos para crear el cliente");
                }
                else {
                    if (txtCedula.Text == "")
                    {
                        MsgBox("alert", "Ingrese una cedula para crear el cliente");
                    }
                    else {
                        if (txtNombre.Text == "")
                        {
                            MsgBox("alert", "Ingrese un nombre para el cliente");
                        }
                        else {
                            if (txtApellido.Text == "")
                            {
                                MsgBox("alert", "Ingrese un apellido para el cliente");
                            }
                            else {
                                if (txtDireccion.Text == "")
                                {
                                    MsgBox("alert", "Ingrese una direccion para el cliente");
                                }
                                else {
                                    if (txtTelefono.Text == "")
                                    {
                                        MsgBox("alert", "Ingrese un telefono para el cliente");
                                    }
                                    else {
                                        if (txtEmail.Text == "")
                                        {
                                            MsgBox("alert", "Ingrese un email para el cliente");
                                        }
                                        else {
                                            MsgBox("alert", "Se ha creado el cliente");
                                            txtCedula.Text = "";
                                            txtNombre.Text = "";
                                            txtApellido.Text = "";
                                            txtTelefono.Text = "";
                                            txtEmail.Text = "";
                                            txtDireccion.Text = "";
                                        }
                                    }    
                                }
                            }
                        }

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
    }
}