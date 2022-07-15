using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace BDD_Parquea_YA_RecaldeCristhian
{
    public class Acc
    {
        AccesoDatos conectar = new AccesoDatos("ParqueaYA");
        public DataSet Usuario()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_CLI");
            //conectar.AsignarParametros("USUARIO", strUsuario, DbType.String);
            //conectar.AsignarParametros("CLAVE", strClave, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        //public DataSet Usuario(string strUsuario, string strClave)
        //{
        //    conectar.Conectar();
        //    conectar.CrearComando("SP_SELECT_CLIENTE");
        //    //conectar.AsignarParametros("USUARIO", strUsuario, DbType.String);
        //    //conectar.AsignarParametros("CLAVE", strClave, DbType.String);
        //    DataSet dsDatos = conectar.EjecutarDataset();
        //    conectar.Desconectar();
        //    return dsDatos;
        //}
    }
}