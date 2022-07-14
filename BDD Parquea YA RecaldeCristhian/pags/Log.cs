using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Descripción breve de Log
/// </summary>
public class Log
{
    
    public Log()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public string ObneterPath()
    {
        string strPath = "C:\\log\\";
        return strPath;
    }
    public string ObtenerNombreArchivo()
    {
        string strNombreArchivo = "Log_Sistema_Laboral";
        return strNombreArchivo;
    }

    public string ObtenerExtensioArchivo()
    {
        string strExtensionArchivo = ".log";
        return strExtensionArchivo;
    }
   
    public void guardaLog(string strMensaje, string strUsuario)
    {
        //log
        
        strMensaje = DateTime.Now.ToLongDateString() + " ; " + DateTime.Now.ToLongTimeString() + " ; " +
            " ; " + strUsuario + " ; " + strMensaje;
        //ManejadorArchivos logArchivos = new ManejadorArchivos();
        //logArchivos.EscribirArchivo(ObneterPath(), ObtenerNombreArchivo(), ObtenerExtensioArchivo(), strMensaje);
    }
}
