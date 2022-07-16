using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
//usings
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace BDD_Parquea_YA_RecaldeCristhian.pags
{
    
    public partial class clientes : System.Web.UI.Page
    {
        Acc datos = new Acc();

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
                                            //insertar
                                            DataSet dsDatos = datos.insertarClientes(txtCedula.Text, txtNombre.Text, txtApellido.Text,txtDireccion.Text, txtTelefono.Text,txtEmail.Text,1);

                                            //ver actualizado
                                            dsDatos = datos.selectClientes();
                                            GridView1.DataSource = dsDatos.Tables[0];
                                            GridView1.DataBind();

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

        protected void btnVer_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.selectClientes();
            GridView1.DataSource = dsDatos.Tables[0];
            GridView1.DataBind();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {

                    btnCrear.Enabled = true;
                    //actualizar
                    int id = int.Parse(GridView1.SelectedRow.Cells[1].Text);    //id

                    DataSet dsDatos = datos.actualizarClientes(txtCedula.Text, txtNombre.Text, txtApellido.Text, txtDireccion.Text, txtTelefono.Text, txtEmail.Text, 1, id);

                    //ver actualizado
                    dsDatos = datos.selectClientes();
                    GridView1.DataSource = dsDatos.Tables[0];
                    GridView1.DataBind();

            }
            catch (Exception) 
            {
                MsgBox("alert", "Error");
            }
        }

        //alertas
        protected void MsgBox(string v_tipo_msg, string v_msg)
        {
            Response.Write("<script language='javascript'>");
            Response.Write(v_tipo_msg + "('" + v_msg + "')");
            Response.Write("</script>");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                btnCrear.Enabled = false;

                txtCedula.Text = GridView1.SelectedRow.Cells[2].Text;
                txtNombre.Text = GridView1.SelectedRow.Cells[3].Text;
                txtApellido.Text = GridView1.SelectedRow.Cells[4].Text;
                txtTelefono.Text = GridView1.SelectedRow.Cells[5].Text;
                txtDireccion.Text = GridView1.SelectedRow.Cells[6].Text;
                txtEmail.Text = GridView1.SelectedRow.Cells[7].Text;


            }
            catch (Exception) {
                MsgBox("alert", "Error");

            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {

                //eliminar
                int id = int.Parse(GridView1.SelectedRow.Cells[1].Text);    //id

                DataSet dsDatos = datos.elminarClientes( id);
                MsgBox("alert", "Se ha elminado el registro: "+id);

                //ver actualizado
                dsDatos = datos.selectClientes();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();


            }
            catch (Exception)
            {
                MsgBox("alert", "Error");
            }
        }
    }
}