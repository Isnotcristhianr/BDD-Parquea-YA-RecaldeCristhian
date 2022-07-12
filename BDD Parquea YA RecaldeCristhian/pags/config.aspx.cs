using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDD_Parquea_YA_RecaldeCristhian.pags
{
    public partial class config : System.Web.UI.Page
    {
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

                                    // Response.Redirect("admin.aspx");
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
    }
}