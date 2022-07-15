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
    public partial class test : System.Web.UI.Page
    {
        Acc datos = new Acc();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = GridView1.SelectedRow.Cells[3].Text;
            Label2.Text = GridView1.SelectedRow.Cells[2].Text;

        }

        //llamado clase

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.Usuario();
            GridView1.DataSource = dsDatos.Tables[0];
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            DataSet dsDatos = datos.InsertarP(TextBox1.Text, int.Parse(TextBox2.Text), int.Parse(TextBox3.Text));
            
        }
    }
}