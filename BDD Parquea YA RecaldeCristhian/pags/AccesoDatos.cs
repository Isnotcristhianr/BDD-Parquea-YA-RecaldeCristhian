using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace BDD_Parquea_YA_RecaldeCristhian
{
    public class AccesoDatos
    {
        public AccesoDatos()
        {
            //
            // TODO: Agregar aquí la lógica del constructor
            //
        }
        public string NN;
        private DbConnection conexion = null;
        private DbCommand comando = null;
        private DbTransaction transaccion = null;
        private DbParameter parametro = null;
        private string Bdd;
        private DbDataAdapter daTabla = null;
        private string cadenaConexion;


        private static DbProviderFactory factory = null;

        public AccesoDatos(string nomconexion)
        {
            this.Bdd = nomconexion;
            Configurar();
        }

        /// <summary>
        /// Configura el acceso a la base de datos para su utilización.
        /// </summary>
        /// <exception cref="BaseDatosException">Si existe un error al cargar la configuración.</exception>

        private void Configurar()
        {
            try
            {


                string proveedor = System.Configuration.ConfigurationManager.ConnectionStrings[Bdd].ProviderName;
                this.cadenaConexion = ConfigurationManager.ConnectionStrings[Bdd].ConnectionString;
                AccesoDatos.factory = DbProviderFactories.GetFactory(proveedor);

            }
            catch (ConfigurationException ex)
            {
                //throw new BaseDatosException("Error al cargar la configuración del acceso a datos.", ex);
            }
        }


        public void Desconectar()
        {
            if (this.conexion.State.Equals(ConnectionState.Open))
            {
                this.conexion.Close();
            }
        }

        public void LimpiarParametros()
        {
            comando.Parameters.Clear();
        }

        /// <summary>
        /// Se concecta con la base de datos.
        /// </summary>
        /// <exception cref="BaseDatosException">Si existe un error al conectarse.</exception>
        public void Conectar()
        {
            if (this.conexion != null && !this.conexion.State.Equals(ConnectionState.Closed))
            {
                //throw new BaseDatosException("La conexión ya se encuentra abierta.");
            }
            try
            {
                if (this.conexion == null)
                {

                    this.conexion = factory.CreateConnection();
                    this.conexion.ConnectionString = cadenaConexion;
                }

                try
                {
                    this.conexion.Open();
                }
                catch (Exception ex)
                {
                    //MessageBox.Show("Error al conectarse a la base de datos.");

                }

            }
            catch (DataException ex)
            {
                // throw new BaseDatosException("Error al conectarse a la base de datos.", ex);
            }
        }

        /// <summary>
        /// Crea un comando en base a una sentencia SQL.
        /// Ejemplo:
        /// <code>SELECT * FROM Tabla WHERE campo1=@campo1, campo2=@campo2</code>
        /// Guarda el comando para el seteo de parámetros y la posterior ejecución.
        /// </summary>
        /// <param name="Procedimiento">La sentencia SQL con el formato: SENTENCIA [param = @param,]</param>



        public void CrearComando(string Procedimiento)
        {

            this.comando = factory.CreateCommand();
            this.comando.Connection = this.conexion;
            this.comando.CommandType = CommandType.StoredProcedure;
            this.comando.CommandText = Procedimiento;

            if (this.transaccion != null)
            {
                this.comando.Transaction = this.transaccion;
            }
        }


        /// <summary>
        /// Crea un parametro de tipo null
        /// </summary>
        /// <param name="nombre">nombre del parametro</param>



        public void AsignarParametroNulo(string nombre)
        {
            this.parametro = factory.CreateParameter();
            parametro.ParameterName = nombre;
            parametro.DbType = DbType.Object;
            parametro.Value = null;
            this.comando.Parameters.Add(parametro);
        }



        /// <summary>
        /// Asigna un parámetro de tipo cadena al comando creado.
        /// </summary>
        /// <param name="nombre">El nombre del parámetro.</param>
        /// <param name="valor">El valor del parámetro.</param>

        public void AsignarParametros(string nombre, string valor, DbType tipo)
        {
            this.parametro = factory.CreateParameter();
            parametro.ParameterName = nombre;
            parametro.DbType = tipo;
            parametro.Value = valor;
            this.comando.Parameters.Add(parametro);
        }



        /// <summary>
        /// Ejecuta el comando creado y retorna el resultado de la consulta.
        /// </summary>
        /// <returns>El resultado de la consulta.</returns>
        /// <exception cref="BaseDatosException">Si ocurre un error al ejecutar el comando.</exception>


        /// <summary>
        /// Ejecuta el comando creado.
        /// </summary>
        public int EjecutarComando()
        {
            return this.comando.ExecuteNonQuery();
        }

        /// <summary>
        /// Comienza una transacción en base a la conexion abierta.
        /// Todo lo que se ejecute luego de esta ionvocación estará 
        /// dentro de una tranasacción.
        /// </summary>
        public void ComenzarTransaccion()
        {
            if (this.transaccion == null)
            {
                this.transaccion = this.conexion.BeginTransaction();
            }
        }

        /// <summary>
        /// Cancela la ejecución de una transacción.
        /// Todo lo ejecutado entre ésta invocación y su 
        /// correspondiente <c>ComenzarTransaccion</c> será perdido.
        /// </summary>
        public void CancelarTransaccion()
        {
            if (this.transaccion != null)
            {
                this.transaccion.Rollback();
            }
        }

        /// <summary>
        /// Confirma todo los comandos ejecutados entre el <c>ComanzarTransaccion</c>
        /// y ésta invocación.
        /// </summary>
        public void ConfirmarTransaccion()
        {
            if (this.transaccion != null)
            {
                this.transaccion.Commit();
            }
        }

        public DataSet EjecutarDataset()
        {
            DataSet ds = new DataSet();
            daTabla = factory.CreateDataAdapter();
            daTabla.SelectCommand = this.comando;
            daTabla.Fill(ds);
            return ds;
        }


    }
}