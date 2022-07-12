using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDD_Parquea_YA_RecaldeCristhian.pags
{
    public partial class agregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try { 
                if (txtNombre.Text == "" && txtApellido.Text == "" && txtUser.Text == "" && txtPassword.Text == "" && txtUbi.Text == "" && txtTelf.Text == "" && txtId.Text == "" && txtEmail.Text == "" && txtDate.Text == "")
                {
                }
                else
                {
                    if (txtNombre.Text == "")
                    {
                        MsgBox("alert", "Ingrese un nombre para agregar usuario ");
                    }
                    else {
                        if (txtApellido.Text == "")
                        {
                            MsgBox("alert", "Ingrese un apellido para agregar usuario ");
                        }
                        else {
                            if (txtUser.Text == "")
                            {
                                MsgBox("alert", "Ingrese un usuario para agregar usuario ");
                            }
                            else {
                                if (txtPassword.Text == ""||txtConfPassword.Text=="") {
                                    MsgBox("alert", "Ingrese una contraseña para agregar usuario ");
                                }
                                else
                                {
                                    if (txtPassword.Text != txtConfPassword.Text) {
                                        MsgBox("alert", "Las contraseñas ingresadas no coinciden");
                                    }
                                    else
                                    {
                                        if (txtUbi.Text == "")
                                        {
                                            MsgBox("alert", "Ingrese una direccion para agregar usuario ");
                                        }
                                        else {
                                            if (txtTelf.Text == "")
                                            {
                                                MsgBox("alert", "Ingrese un telefono para agregar usuario ");
                                            }
                                            else {
                                                if (txtEmail.Text == "") {
                                                    MsgBox("alert", "Ingrese un email para agregar usuario ");
                                                }
                                                else
                                                {
                                                    if (txtDate.Text == "")
                                                    {
                                                        MsgBox("alert", "Ingrese una fecha para agregar usuario ");
                                                    }
                                                    else {

                                                        MsgBox("alert", "Se ha agregado correctamente "+txtNombre.Text+" su usuario:"+txtUser.Text);
                                                        txtNombre.Text = "";
                                                        txtApellido.Text = "";
                                                        txtUser.Text = "";
                                                        txtPassword.Text = "";
                                                        txtConfPassword.Text = "";
                                                        txtUbi.Text = "";
                                                        txtTelf.Text = "";
                                                        txtId.Text = "";
                                                        txtEmail.Text = "";
                                                        txtDate.Text = "";
                                                        Response.Redirect("inicio.aspx");
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception) {
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