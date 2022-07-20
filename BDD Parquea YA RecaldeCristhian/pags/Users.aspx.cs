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
    public partial class Users : System.Web.UI.Page
    {
        Acc datos = new Acc();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void MsgBox(string v_tipo_msg, string v_msg)
        {
            Response.Write("<script language='javascript'>");
            Response.Write(v_tipo_msg + "('" + v_msg + "')");
            Response.Write("</script>");
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNombre.Text == "" && txtApellido.Text == "" && txtUser.Text == "" && txtPassword.Text == "" && txtConfPassword.Text == "" && txtUbi.Text == "" && txtTelf.Text == "" && txtEmail.Text == "" && txtId.Text == "" && txtDate.Text == "")
                {
                    MsgBox("alert", "Ingrese los campos para poder continuar");
                }
                if (txtNombre.Text == "")
                {
                    MsgBox("alert", "Ingrese un nombre para poder registrar");
                }
                else
                {
                    if (txtApellido.Text == "")
                    {
                        MsgBox("alert", "Ingrese un apellido para poder registrar");
                    }
                    else
                    {
                        if (txtUser.Text == "")
                        {
                            MsgBox("alert", "Ingrese un usuario para poder registrar");
                        }
                        else
                        {
                            if (txtUbi.Text == "")
                            {
                                MsgBox("alert", "Ingrese una ubicacion para poder registrar");
                            }
                            else
                            {
                                if (txtTelf.Text == "")
                                {
                                    MsgBox("alert", "Ingrese un telefono para poder registrar");
                                }
                                else
                                {
                                    if (txtId.Text == "")
                                    {
                                        MsgBox("alert", "Ingrese una cedula para poder registrar");
                                    }
                                    else
                                    {
                                        if (txtEmail.Text == "")
                                        {
                                            MsgBox("alert", "Ingrese un email para poder registrar");
                                        }
                                        else
                                        {
                                            if (txtDate.Text == "")
                                            {
                                                MsgBox("alert", "Ingrese una fecha para poder registrar");
                                            }
                                            else
                                            {
                                                if (txtPassword.Text != txtConfPassword.Text)
                                                {
                                                    MsgBox("alert", "Las contraseñas ingresadas no coinciden");
                                                }
                                                else
                                                {

                                                    //insert
                                                    DataSet dsDatos = datos.insertarUsuario(txtNombre.Text, txtApellido.Text, txtUser.Text, txtPassword.Text, txtUbi.Text, txtTelf.Text, txtId.Text, txtEmail.Text, txtDate.Text, 1);
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

        protected void btnVer_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet dsDatos = datos.selectAdmins();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception) {
                MsgBox("alert", "Error");
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try {
                btnRegistrarse.Enabled = true;
                //actualizar
                int id = int.Parse(GridView1.SelectedRow.Cells[1].Text);    //id

                DataSet dsDatos = datos.actualizarUsuarioAdmin(txtNombre.Text, txtApellido.Text, txtUser.Text, txtPassword.Text, txtUbi.Text, txtTelf.Text, txtId.Text, txtEmail.Text, txtDate.Text, 1, id);

                //ver actualizado
                dsDatos = datos.selectAdmins();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();

                MsgBox("alert", "Se ha actualizado usuario");

            }
            catch (Exception)
            {
                MsgBox("alert", "Error");
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                //eliminar
                int id = int.Parse(GridView1.SelectedRow.Cells[1].Text);    //id

                DataSet dsDatos = datos.elminarAdminUsuario(id);
                MsgBox("alert", "Se ha elminado el registro: " + id);

                //ver actualizado
                dsDatos = datos.selectAdmins();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception)
            {
                MsgBox("alert", "Error");
            }
        }

        protected void btnEstado_Click(object sender, EventArgs e)
        {
            try
            {
                btnRegistrarse.Enabled = true;

                int id = int.Parse(GridView1.SelectedRow.Cells[1].Text);    //id

                //estado

                DataSet dsDatos = datos.elminarEstadoAdmins(0, id);
                MsgBox("alert", "Se ha elminado el estado del cliente: " + id);

                //ver actualizado
                dsDatos = datos.selectAdmins();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception)
            {
                MsgBox("alert", "Error");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                btnRegistrarse.Enabled = false;

                txtNombre.Text = GridView1.SelectedRow.Cells[2].Text;
                txtApellido.Text = GridView1.SelectedRow.Cells[3].Text;
                txtUser.Text = GridView1.SelectedRow.Cells[4].Text;
                txtPassword.Text = GridView1.SelectedRow.Cells[5].Text;
                txtConfPassword.Text = GridView1.SelectedRow.Cells[5].Text;
                txtUbi.Text = GridView1.SelectedRow.Cells[6].Text;
                txtTelf.Text = GridView1.SelectedRow.Cells[7].Text;
                txtId.Text = GridView1.SelectedRow.Cells[8].Text;
                txtEmail.Text = GridView1.SelectedRow.Cells[9].Text;
                txtDate.Text = GridView1.SelectedRow.Cells[10].Text;
            }
            catch (Exception) {
                MsgBox("alert", "Error");
            }
        }

        protected void imgPrint_Click(object sender, ImageClickEventArgs e)
        {
            DataSet dsDatos = datos.selectAdmins();
            GridView1.DataSource = dsDatos.Tables[0];
            GridView1.DataBind();

            string popupScript = "<script language='javascript'>" +
            "window.print('cobros.aspx', 'CustomPopUp', " +
         "'width=850, height=350, menubar=no,scrollbars=yes, resizable=yes')" +
        "</script>";

            Page.RegisterStartupScript("PopupScript", popupScript);
        }
    }

}