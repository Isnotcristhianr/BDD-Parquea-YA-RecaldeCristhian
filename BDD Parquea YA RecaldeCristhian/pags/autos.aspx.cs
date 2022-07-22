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
    public partial class autos : System.Web.UI.Page
    {
        Acc datos = new Acc();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
            
            txtDate.Text = DateTime.Now.ToShortDateString();
            txtHoraIngreso.Text = DateTime.Now.ToString("hh:mm");
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtCedula.Text == "" && txtMatricula.Text == "" && txtTipo.Text == "" && txtHoraIngreso.Text == "")
                {
                    MsgBox("alert", "Ingrese los datos para crear el ingreso de automovil");
                }
                else
                {
                    if (txtMatricula.Text == "")
                    {
                        MsgBox("alert", "Ingrese la matricula para el automovil");
                    }
                    else
                    {
                        if (txtTipo.Text == "")
                        {
                            MsgBox("alert", "Ingrese el tipo de automovil");
                        }
                        else
                        {
                            if (txtDate.Text == "")
                            {
                                MsgBox("alert", "Ingrese la fecha de ingreso para el automovil");
                            }
                            else
                            {
                                if (txtHoraIngreso.Text == "")
                                {
                                    MsgBox("alert", "Ingrese la hora de ingreso para el automovil");
                                }
                                else
                                {

                                    //validacion
                                    DataSet dsDatos = datos.VerificarAutoCedulaClientes(txtCedula.Text);
                                    if (dsDatos.Tables[0].Rows.Count > 0)
                                    {
                                        //insert
                                        DataSet dsDatos2 = datos.insertarAutos(txtCedula.Text, txtMatricula.Text, txtTipo.Text, txtDate.Text, txtHoraIngreso.Text, 1);

                                        //inner join
                                        DataSet dsDatos3 = datos.innerJoinCliAutos();

                                        //ver actualizado
                                        dsDatos = datos.selectAutos();
                                        GridView1.DataSource = dsDatos.Tables[0];
                                        GridView1.DataBind();

                                        MsgBox("alert", "Se ha insertado el auto");


                                        MsgBox("alert", "Se ha ingresado el automovil Matricula: " + txtMatricula.Text);
                                        txtCedula.Text = "";
                                        txtDate.Text = "";
                                        txtHoraIngreso.Text = "";
                                        txtMatricula.Text = "";
                                        txtTipo.Text = "";
                                    }
                                    else
                                    {
                                        MsgBox("alert", "Cedula no existe");
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

        protected void btnVisualizar_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet dsDatos = datos.selectAutos();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception) {
                MsgBox("alert", "Error");
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                btnRegistrar.Enabled = true;

                //actualizar
                int id = int.Parse(GridView1.SelectedRow.Cells[1].Text);    //id

                DataSet dsDatos = datos.actualizarAutos(txtCedula.Text, txtMatricula.Text, txtTipo.Text, txtDate.Text, txtHoraIngreso.Text, 1, id);

                //ver actualizado
                dsDatos = datos.selectAutos();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();

                MsgBox("alert", "Se ha actualizado el registro: " + id);

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
                btnRegistrar.Enabled = false;

                txtCedula.Text = GridView1.SelectedRow.Cells[2].Text;
                txtMatricula.Text = GridView1.SelectedRow.Cells[3].Text;
                txtTipo.Text = GridView1.SelectedRow.Cells[4].Text;
                txtDate.Text = GridView1.SelectedRow.Cells[5].Text;
                txtHoraIngreso.Text = GridView1.SelectedRow.Cells[6].Text;


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
                btnRegistrar.Enabled = true;


                //eliminar
                int id = int.Parse(GridView1.SelectedRow.Cells[1].Text);    //id

                DataSet dsDatos = datos.elminarAutos(id);
                MsgBox("alert", "Se ha elminado el registro: " + id);

                //ver actualizado
                dsDatos = datos.selectAutos();
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
                btnRegistrar.Enabled = true;

                int id = int.Parse(GridView1.SelectedRow.Cells[1].Text);    //id

                //eliminar
               
                DataSet dsDatos = datos.elminarEstadoAutos(0,id);
                MsgBox("alert", "Se ha elminado el estado del registro: " + id);

                //ver actualizado
                dsDatos = datos.selectAutos();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();

            }
            catch (Exception) {
                MsgBox("alert", "Error");
            }
        }

        protected void imgPrint_Click(object sender, ImageClickEventArgs e)
        {
            DataSet dsDatos = datos.selectAutos();
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