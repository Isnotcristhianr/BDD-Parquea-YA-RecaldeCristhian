﻿using System;
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

        public DataSet actualizarClientes(string ced, string nombre, string apellido, string dir, string telf, string email, int est)
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

            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
    }
}