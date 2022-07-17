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

        //validacion users
        public DataSet VerificarU(string usu, string contr)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_REGISTRO_USERCONTRA");
            conectar.AsignarParametros("usu", usu, DbType.String);
            conectar.AsignarParametros("contr", contr, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        //registrarse como admin
        public DataSet insertarUsuario(string nombre, string apellido, string usuario, string pass,string ubi, string telf, string ced, string email, string fecha, int est)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_REGISTRO");
            conectar.AsignarParametros("nombre", nombre, DbType.String);
            conectar.AsignarParametros("apellido", apellido, DbType.String);
            conectar.AsignarParametros("usuario", usuario, DbType.String);
            conectar.AsignarParametros("pass", pass, DbType.String);
            conectar.AsignarParametros("ubi", ubi, DbType.String);
            conectar.AsignarParametros("telf", telf, DbType.String);
            conectar.AsignarParametros("ced", ced, DbType.String);
            conectar.AsignarParametros("email", email, DbType.String);
            conectar.AsignarParametros("fecha", fecha, DbType.String);
            conectar.AsignarParametros("est", est.ToString(), DbType.String);

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
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
        public DataSet InsertarP(string nombre, int edad, int est)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_TEST");
            conectar.AsignarParametros("nombre", nombre, DbType.String);
            conectar.AsignarParametros("edad", edad.ToString(), DbType.Int32);
            conectar.AsignarParametros("est", est.ToString(), DbType.String);
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

        ///////////////////////////////////////////////////////////////////////////////////
        //clientes
        public DataSet selectClientes()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_CLI");
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet insertarClientes(string ced , string nombre,string apellido,string dir,string telf,string email,int est)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_CLI");
            conectar.AsignarParametros("ced", ced, DbType.String);
            conectar.AsignarParametros("nombre", nombre, DbType.String);
            conectar.AsignarParametros("apellido", apellido, DbType.String);
            conectar.AsignarParametros("dir", dir, DbType.String);
            conectar.AsignarParametros("telf", telf, DbType.String);
            conectar.AsignarParametros("email", email, DbType.String);
            conectar.AsignarParametros("est", est.ToString(), DbType.Int32);

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet actualizarClientes(string ced, string nombre, string apellido, string dir, string telf, string email, int est, int id)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_UPDATE_CLI");
            conectar.AsignarParametros("ced", ced, DbType.String);
            conectar.AsignarParametros("nombre", nombre, DbType.String);
            conectar.AsignarParametros("apellido", apellido, DbType.String);
            conectar.AsignarParametros("dir", dir, DbType.String);
            conectar.AsignarParametros("telf", telf, DbType.String);
            conectar.AsignarParametros("email", email, DbType.String);
            conectar.AsignarParametros("est", est.ToString(), DbType.Int32);
            conectar.AsignarParametros("id", id.ToString(), DbType.Int32);

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet elminarClientes(int id)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_DELETE_CLI");
            conectar.AsignarParametros("id", id.ToString(), DbType.Int32);

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        ////autos
        public DataSet selectAutos()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_AUTOS");
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet insertarAutos(string ced, string matr, string tipo, string fecha, string tiempo, int est)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_AUTOS");
            conectar.AsignarParametros("ced", ced, DbType.String);
            conectar.AsignarParametros("matr", matr, DbType.String);
            conectar.AsignarParametros("tipo", tipo, DbType.String);
            conectar.AsignarParametros("fecha", fecha, DbType.String);
            conectar.AsignarParametros("tiempo", tiempo, DbType.String);
            conectar.AsignarParametros("est", est.ToString(), DbType.Int32);

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet actualizarAutos(string ced, string matr, string tipo, string fecha, string tiempo, int est, int id)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_UPDATE_AUTOS");
            conectar.AsignarParametros("ced", ced, DbType.String);
            conectar.AsignarParametros("matr", matr, DbType.String);
            conectar.AsignarParametros("tipo", tipo, DbType.String);
            conectar.AsignarParametros("fecha", fecha, DbType.String);
            conectar.AsignarParametros("tiempo", tiempo, DbType.String);
            conectar.AsignarParametros("est", est.ToString(), DbType.Int32);
            conectar.AsignarParametros("id", id.ToString(), DbType.Int32);

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet elminarAutos(int id)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_DELETE_AUTOS");
            conectar.AsignarParametros("id", id.ToString(), DbType.Int32);

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        /////////configuraciones
        public DataSet selectConfiguraciones()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_CONFIG");
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet insertarConfiguraciones(int disp, double pvp, int iva, string timeIni, string timefin, int est)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_CONFIG");
            conectar.AsignarParametros("disp", disp.ToString(), DbType.Int32);
            conectar.AsignarParametros("pvp", pvp.ToString(), DbType.Double);
            conectar.AsignarParametros("iva", iva.ToString(), DbType.Int32);
            conectar.AsignarParametros("timeIni", timeIni, DbType.String);
            conectar.AsignarParametros("timefin", timefin, DbType.String);
            conectar.AsignarParametros("est", est.ToString(), DbType.Int32);


            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        /*
          public DataSet insertarConfiguraciones(int disp, double pvp, int iva, DateTime timeIni, DateTime timefin, int est)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_AUTOS");
            conectar.AsignarParametros("dips", disp.ToString(), DbType.Int32);
            conectar.AsignarParametros("pvp", pvp.ToString(), DbType.Double);
            conectar.AsignarParametros("iva", iva.ToString(), DbType.Int32);
            conectar.AsignarParametros("timeIni", timeIni.ToString(), DbType.DateTime);
            conectar.AsignarParametros("timeIni", timefin.ToString(), DbType.DateTime);
            conectar.AsignarParametros("est", est.ToString(), DbType.Int32);

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
   
        }
         */

        public DataSet actualizarConfiguraciones(int disp, double pvp, int iva, string timeIni, string timefin, int est, int id)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_UPDATE_CONFIG");
            conectar.AsignarParametros("disp", disp.ToString(), DbType.Int32);
            conectar.AsignarParametros("pvp", pvp.ToString(), DbType.Double);
            conectar.AsignarParametros("iva", iva.ToString(), DbType.Int32);
            conectar.AsignarParametros("timeIni", timeIni, DbType.String);
            conectar.AsignarParametros("timefin", timefin, DbType.String);
            conectar.AsignarParametros("est", est.ToString(), DbType.Int32);
            conectar.AsignarParametros("id", id.ToString(), DbType.Int32);

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet elminarConfiguraciones(int id)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_DELETE_CONFIG");
            conectar.AsignarParametros("id", id.ToString(), DbType.Int32);

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
    }
}