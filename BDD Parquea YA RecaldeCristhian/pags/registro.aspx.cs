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
    public partial class registro : System.Web.UI.Page
    {
        Acc datos = new Acc();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try { 
                if (txtNombre.Text == "" && txtApellido.Text == "" && txtUser.Text == "" && txtPassword.Text == "" && txtConfPassword.Text == "" && txtUbi.Text == "" && txtTelf.Text == "" && txtEmail.Text == "" && txtId.Text == "" && txtDate.Text=="")
                {
                    MsgBox("alert", "Ingrese los campos para poder continuar");
                }
                if (txtNombre.Text == "") {
                    MsgBox("alert", "Ingrese un nombre para poder registrar");
                }
                else
                {
                    if (txtApellido.Text == "")
                    {
                        MsgBox("alert", "Ingrese un apellido para poder registrar");
                    }
                    else {
                        if (txtUser.Text == "") {
                            MsgBox("alert", "Ingrese un usuario para poder registrar");
                        }
                        else
                        {
                            if (txtUbi.Text == "") {
                                MsgBox("alert", "Ingrese una ubicacion para poder registrar");
                            }
                            else
                            {
                                if (txtTelf.Text == "")
                                {
                                    MsgBox("alert", "Ingrese un telefono para poder registrar");
                                }
                                else {
                                    if (txtId.Text == "") {
                                        MsgBox("alert", "Ingrese una cedula para poder registrar");
                                    }
                                    else
                                    {
                                        if (txtEmail.Text == "") {
                                            MsgBox("alert", "Ingrese un email para poder registrar");
                                        }
                                        else
                                        {
                                            if (txtDate.Text == "")
                                            {
                                                MsgBox("alert", "Ingrese una fecha para poder registrar");
                                            }
                                            else {
                                                if (txtPassword.Text != txtConfPassword.Text)
                                                {
                                                    MsgBox("alert", "Las contraseñas ingresadas no coinciden");
                                                }
                                                else if (cbxAcuerdo.Checked == true)
                                                {
                                                    //insert
                                                    DataSet dsDatos = datos.insertarUsuario(txtNombre.Text, txtApellido.Text, txtUser.Text, txtPassword.Text,txtUbi.Text, txtTelf.Text, txtId.Text, txtEmail.Text, txtDate.Text, 1);
                                                    DataSet dsDatos2 = datos.obteneridLastUsuario();
                                                    String msg = dsDatos2.Tables[0].Rows[0]["reg_id"].ToString();

                                                    txtNombre.Text = "";
                                                    txtApellido.Text = "";
                                                    txtUser.Text = "";
                                                    txtPassword.Text = "";
                                                    txtConfPassword.Text = "";
                                                    txtUbi.Text = "";
                                                    txtTelf.Text = "";
                                                    txtEmail.Text = "";
                                                    txtId.Text = "";
                                                    //Response.Redirect("inicio.aspx");
                                                    MsgBox("alert", "Se ha registrado usuario: " + txtNombre.Text + "Codigo de recuperacion: " + msg);

                                                }
                                                else
                                                {
                                                    MsgBox("alert", "Acepte terminos y condiciones para continuar");
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