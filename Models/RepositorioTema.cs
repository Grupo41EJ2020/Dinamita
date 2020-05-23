using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVCLaboratorio.Models;
using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Models
{
    public class RepositorioTema: ITemas
    {
        public List<Tema> ObtenerTema()
        {
            DataTable dtTemas = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarTodo", CommandType.StoredProcedure);
            List<Tema> Isttemas = new List<Tema>();

            foreach (DataRow item in dtTemas.Rows)
            {
                Tema datosTemas = new Tema();
                datosTemas.IdTema = int.Parse(item["IdTema"].ToString());
                datosTemas.Nombre = item["Nombre"].ToString();

                Isttemas.Add(datosTemas);
            }
            return (Isttemas);
        }

        public Tema ObtenerTema(int IdTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", IdTema));
            DataTable dttema = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);
            Tema ttema = new Tema();
            if (dttema.Rows.Count > 0)
            {
                ttema.IdTema = int.Parse(dttema.Rows[0]["IdTema"].ToString());
                ttema.Nombre = dttema.Rows[0]["Nombre"].ToString();

                return ttema;
            }
            else
            {
                return null;
            }
        }

        public void insertarTema(string datosTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@Nombre", datosTema));
            BaseHelper.ejecutarSentencia("sp_Tema_Insertar", CommandType.StoredProcedure, parametros);
        }

        public void eliminarTema(int IdTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", IdTema));
            BaseHelper.ejecutarConsulta("sp_Tema_Eliminar", CommandType.StoredProcedure, parametros);
        }

        public void actualizarTema(Tema datosTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", datosTema.IdTema));
            parametros.Add(new SqlParameter("@Nombre", datosTema.Nombre));
            BaseHelper.ejecutarConsulta("sp_Tema_Actualizar", CommandType.StoredProcedure, parametros);
        }
    }
}