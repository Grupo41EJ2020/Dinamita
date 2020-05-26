using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Models
{
    public class RepositorioCurso_Tema
    {
        public List<CursoTema> obtenerCursoTema()
        {
            //Obtener todos los CursoTema
            DataTable dtCursoTema = BaseHelper.ejecutarConsulta("sp_CursoTema_ConsultarTodo", CommandType.StoredProcedure);

            List<CursoTema> lstCursoTema = new List<CursoTema>();

            foreach (DataRow item in dtCursoTema.Rows)
            {
                CursoTema datosCursoTema = new CursoTema();
                datosCursoTema.IdCT = int.Parse(item["IdCT"].ToString());
                datosCursoTema.IdCurso = int.Parse(item["IdCurso"].ToString());
                datosCursoTema.IdTema = int.Parse(item["IdTema"].ToString());

                lstCursoTema.Add(datosCursoTema);
            }
            return lstCursoTema;
        }

        public CursoTema obtenerCursoTema(int IdCT)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", IdCT));

            DataTable dtCursoTema = BaseHelper.ejecutarConsulta("sp_CursoTema_ConsultarPorID", CommandType.StoredProcedure, parametros);

            CursoTema miCursoTema = new CursoTema();

            if (dtCursoTema.Rows.Count > 0)
            {
                miCursoTema.IdCT = int.Parse(dtCursoTema.Rows[0]["IdCT"].ToString());
                miCursoTema.IdCurso = int.Parse(dtCursoTema.Rows[0]["IdCurso"].ToString());
                miCursoTema.IdTema = int.Parse(dtCursoTema.Rows[0]["IdTema"].ToString());
                return miCursoTema;
            }

            else
            {
                return null;
            }
        }

        public void insertarCursoTema(CursoTema datosCursoTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", datosCursoTema.IdCurso));
            parametros.Add(new SqlParameter("@IdTema", datosCursoTema.IdTema));

            DataTable dtCursoTema = BaseHelper.ejecutarConsulta("sp_CursoTema_Insertar", CommandType.StoredProcedure, parametros);
        }

        public void eliminarCursoTema(int IdCT)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", IdCT));

            DataTable dtCursoTema = BaseHelper.ejecutarConsulta("sp_CursoTema_Eliminar", CommandType.StoredProcedure, parametros);
        }

        public void actualizarCursoTema(CursoTema datosCursoTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", datosCursoTema.IdCT));
            parametros.Add(new SqlParameter("@IdCurso", datosCursoTema.IdCurso));
            parametros.Add(new SqlParameter("@IdTema", datosCursoTema.IdTema));

            DataTable dtCursoTema = BaseHelper.ejecutarConsulta("sp_CursoTema_Actualizar", CommandType.StoredProcedure, parametros);
        }
    }
}