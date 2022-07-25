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
        String time = DateTime.Now.ToString("hh:mm");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
            txtbFecha.Text = DateTime.Now.ToShortDateString();
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

                        /////encabezado
                        //nombre
                        DataSet name = datos.selectNombreCedulaCliente(txtCedula.Text);
                        String nombre = name.Tables[0].Rows[0]["cli_nombre"].ToString();
                        txtNombre.Text = nombre;

                        //apellido
                        DataSet subname = datos.selectApellidoCedulaCliente(txtCedula.Text);
                        String apellido = subname.Tables[0].Rows[0]["cli_apellido"].ToString();
                        txtApellido.Text = apellido;

                        //telefono
                        DataSet telf = datos.selectTelefonoCedulaCliente(txtCedula.Text);
                        String telefono = telf.Tables[0].Rows[0]["cli_telf"].ToString();
                        txtTelefono.Text = telefono;

                        //direccion
                        DataSet addres = datos.selectDirCedulaCliente(txtCedula.Text);
                        String dir = addres.Tables[0].Rows[0]["cli_dir"].ToString();
                        txtDireccion.Text = dir;

                        //email
                        DataSet email = datos.selectEmailCedulaCliente(txtCedula.Text);
                        String correo = email.Tables[0].Rows[0]["cli_email"].ToString();
                        txtEmail.Text = correo;

                    ////cuerpo
                    //contar autos de la ced
                    DataSet dsDatos2 = datos.innerJoinContar(txtCedula.Text);
                        int contar = int.Parse(dsDatos2.Tables[0].Rows[0]["count(auto_id)"].ToString());

                    if (contar == 0)
                    {
                        MsgBox("alert", "No tiene un auto registrado, no se puede facturar");
                    }
                        else {
                            lblCantidad.Text = contar.ToString();
                            lblDetalle.Text = "Servicio de parqueadero";

                            //pvu
                            DataSet dsDatos3 = datos.obteneridLastConfig();
                            int id = int.Parse(dsDatos3.Tables[0].Rows[0]["config_id"].ToString()); //obtener ultima config

                            //tiempos
                            DataSet dsDatos6 = datos.selectTimeCedulaCliente(txtCedula.Text);
                            String ingreso = dsDatos6.Tables[0].Rows[0]["auto_ingreso"].ToString();
                            String salida = DateTime.Now.ToString("HH:mm");
                            //calculo time
                            DateTime horasIngreso = DateTime.Parse(ingreso);
                            DateTime horasSalida = DateTime.Parse(salida);
                            lblDetalleTimeIngreso.Text = "Ingreso: " + horasIngreso.ToString("HH:mm");
                            lblDetalleTimeSalida.Text = "Salida: " + horasSalida.ToString("HH:mm");

                            String time;
                            if (horasSalida < horasIngreso)
                            {
                                time = (horasIngreso - horasSalida).Hours.ToString();
                                lblTime.Text = "" + time;
                            }
                            else
                            {
                                time = ((horasIngreso - horasSalida).Hours + 24).ToString();
                                lblTime.Text = "" + time;

                            }
                            int timepoEstacionado = int.Parse(time);

                            DataSet dsDatos4 = datos.obteneridLastPVP(id);
                            Double pvu = double.Parse(dsDatos4.Tables[0].Rows[0]["config_pvp"].ToString()); //obtener ultimo pvu
                            lblPVU.Text = pvu.ToString();

                            //total 1
                            Double total1 = contar * pvu * timepoEstacionado;
                            lblTotal1.Text = total1.ToString();
                            lblSubtotal.Text = total1.ToString();

                            //iva
                            DataSet dsDatos5 = datos.obteneridLastIVA(id);
                            double iva = double.Parse(dsDatos5.Tables[0].Rows[0]["config_iva"].ToString()); //obtener ultimo iva
                            double precioIva = (iva / 100) * pvu;
                            lblIva.Text = iva.ToString() + "% → " + precioIva.ToString();

                            //pvpFinal
                            double pvf = total1 + precioIva;
                            lblPVF.Text = pvf.ToString();

                            MsgBox("alert", "Se ha facturado correctamente para: " + txtCedula.Text);
                        }
                    }
                    else
                    {
                        MsgBox("alert", "Cedula no existe, usuario inexistente"); 
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

        protected void btnPagar_Click(object sender, EventArgs e)
        {
            try
            {
                if (lblPVF.Text == "")
                {
                    MsgBox("alert", "No se ha registrado un vehiculo");
                }
                else 
                {
                    //inner join con ceds
                    DataSet dsDatos = datos.innerJoinFacturar(txtCedula.Text);

                }
            }
            catch (Exception) 
            {
                MsgBox("alert", "Error");
            }
        }
    }
}