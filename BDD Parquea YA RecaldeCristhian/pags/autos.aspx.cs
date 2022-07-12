using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDD_Parquea_YA_RecaldeCristhian.pags
{
    public partial class autos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtCedula.Text == "" && txtMatricula.Text == "" && ddlTipoAutomovil.Text == "Tipo de Automovil" && txtHoraIngreso.Text == "" && txtDate.Text == "")
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
                        if (ddlTipoAutomovil.Text == "Tipo de Automovil")
                        {
                            MsgBox("alert", "Seleccione el tipo de automovil");
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
                                    MsgBox("alert", "Se ha ingresado el automovil Matricula: " + txtMatricula.Text + " Fecha: " + txtDate.Text + " Hora:" + txtHoraIngreso.Text);
                                    txtCedula.Text = "";
                                    txtDate.Text = "";
                                    txtHoraIngreso.Text = "";
                                    txtMatricula.Text = "";
                                    ddlTipoAutomovil.SelectedValue = "Tipo de Automovil";
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