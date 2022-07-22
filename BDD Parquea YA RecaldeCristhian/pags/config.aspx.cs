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
    public partial class config : System.Web.UI.Page
    {

        Acc datos = new Acc();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnConfigurar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtDisponibles.Text == "" && txtMoney.Text == "" && txtIva.Text == "" && txtHorarioInicio.Text == "" && txtHorarioFin.Text == "")
                {
                    MsgBox("alert", "Ingrese los valores para poder configurar");
                }
                else
                {
                    int disp = int.Parse(txtDisponibles.Text);
                    if (disp <= 0 || txtDisponibles.Text == "")
                    {
                        MsgBox("alert", "La disponibilidad de parqueos debe ser mayor a 0");
                    }
                    else
                    {
                        double money = double.Parse(txtMoney.Text);
                        if (money <= 0 || txtMoney.Text == "")
                        {
                            MsgBox("alert", "El precio de parqueo por hora debe ser mayor a 0");
                        }
                        else
                        {
                            int iva = int.Parse(txtIva.Text);
                            if (iva <= 0 || txtIva.Text == "")
                            {
                                MsgBox("alert", "El iva debe ser mayor a 0");
                            }
                            else
                            {
                                String horaInicio = txtHorarioInicio.Text;
                                String horaFin = txtHorarioFin.Text;
                                if (horaInicio == "")
                                {
                                    MsgBox("alert", "Ingrese un campo para la hora de inicio");
                                }
                                else if (horaFin == "")
                                {
                                    MsgBox("alert", "Ingrese un campo para la hora de finalizacion");
                                }
                                else
                                {
                                    //insert
                                    DataSet dsDatos = datos.insertarConfiguraciones(int.Parse(txtDisponibles.Text), double.Parse(txtMoney.Text), int.Parse(txtIva.Text),txtHorarioInicio.Text, txtHorarioFin.Text, 1);

                                    //cambiar estado anterior
                                    DataSet dsDatos2 = datos.obteneridLastConfig();
                                    int id = int.Parse(dsDatos2.Tables[0].Rows[0]["config_id"].ToString());
                                    DataSet dsDatos3 = datos.elminarEstadoConfiguraciones(0, (id-1));


                                    //ver actualizado
                                    dsDatos = datos.selectConfiguraciones();
                                    GridView1.DataSource = dsDatos.Tables[0];
                                    GridView1.DataBind();

                                    txtDisponibles.Text = "";
                                    txtMoney.Text = "";
                                    txtIva.Text = "";
                                    txtHorarioInicio.Text = "";
                                    txtHorarioFin.Text = "";

                                        MsgBox("alert", "Se ha configurado Satisfactoriamente: " +
                                        " " + "Disponibilidad: " + disp +
                                        " " + "Precio: " + money +
                                        " " + "Iva: " + iva +
                                        " " + "Hora inicio: " + horaInicio +
                                        " " + "Hora fin: " + horaFin);
                                    
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

        //alertas
        protected void MsgBox(string v_tipo_msg, string v_msg)
        {
            Response.Write("<script language='javascript'>");
            Response.Write(v_tipo_msg + "('" + v_msg + "')");
            Response.Write("</script>");
        }

        protected void btnVisualizar_Click(object sender, EventArgs e)
        {
            try {
                DataSet dsDatos = datos.selectConfiguraciones();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception)
            {
                MsgBox("alert", "Error");
            }
           
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                btnConfigurar.Enabled = true;

                //actualizar
                int id = int.Parse(GridView1.SelectedRow.Cells[1].Text);    //id

                DataSet dsDatos = datos.actualizarConfiguraciones(int.Parse(txtDisponibles.Text), double.Parse(txtMoney.Text), int.Parse(txtIva.Text), txtHorarioInicio.Text, txtHorarioFin.Text, 1, id);

                //ver actualizado
                dsDatos = datos.selectConfiguraciones();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();

                MsgBox("alert", "Se ha actualizado el registro: " + id);
            }
            catch (Exception) {
                MsgBox("alert", "Error");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                btnConfigurar.Enabled = false;

                txtDisponibles.Text = GridView1.SelectedRow.Cells[2].Text;
                txtMoney.Text = GridView1.SelectedRow.Cells[3].Text;
                txtIva.Text = GridView1.SelectedRow.Cells[4].Text;
                txtHorarioInicio.Text = GridView1.SelectedRow.Cells[5].Text;
                txtHorarioFin.Text = GridView1.SelectedRow.Cells[6].Text;


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

                DataSet dsDatos = datos.elminarConfiguraciones(id);
                MsgBox("alert", "Se ha elminado el registro: " + id);

                //ver actualizado
                dsDatos = datos.selectConfiguraciones();
                GridView1.DataSource = dsDatos.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception) {
                MsgBox("alert", "Error");
            }
        }

        protected void btnEstado_Click(object sender, EventArgs e)
        {
            btnConfigurar.Enabled = true;

            int id = int.Parse(GridView1.SelectedRow.Cells[1].Text);    //id

            //estado

            DataSet dsDatos = datos.elminarEstadoConfiguraciones(0, id);
            MsgBox("alert", "Se ha elminado el estado del registro: " + id);

            //ver actualizado
            dsDatos = datos.selectConfiguraciones();
            GridView1.DataSource = dsDatos.Tables[0];
            GridView1.DataBind();
        }

        protected void imgPrint_Click(object sender, ImageClickEventArgs e)
        {
            DataSet dsDatos = datos.selectConfiguraciones();
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