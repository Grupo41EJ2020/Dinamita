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
    public class RepositorioCurso_Tema_Video: Curso_Tema_Video
    {

        public List<Curso_Tema_Video> obtenerCurso_Tema_Video()
        {
            DataTable dtCurso_Tema_Video = BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_ConsultarTodo", CommandType.StoredProcedure);
            List<Curso_Tema_Video> IstCurso_Tema_Video = new List<Curso_Tema_Video>();

            foreach (DataRow item in dtCurso_Tema_Video.Rows)
            {
                Curso_Tema_Video datosCurso_Tema_Video = new Curso_Tema_Video();
                datosCurso_Tema_Video.IdCTV = int.Parse(item["IdCTV"].ToString());
                datosCurso_Tema_Video.IdCT = int.Parse(item["IdCT"].ToString());
                datosCurso_Tema_Video.IdVideo = int.Parse(item["IdVideo"].ToString());
                IstCurso_Tema_Video.Add(datosCurso_Tema_Video);
            }
            return IstCurso_Tema_Video;
        }

        public Curso_Tema_Video obtenerCurso_Tema_Video(int IdCurso_Tema_Video)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", IdCurso_Tema_Video));
            DataTable dtCurso_Tema_Video = BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_ConsultarPorID", CommandType.StoredProcedure, parametros);
            Curso_Tema_Video miCurso_Tema_Video = new Curso_Tema_Video();
            if (dtCurso_Tema_Video.Rows.Count > 0)
            {
                miCurso_Tema_Video.IdCTV = int.Parse(dtCurso_Tema_Video.Rows[0]["IdCTV"].ToString());
                miCurso_Tema_Video.IdCT = int.Parse(dtCurso_Tema_Video.Rows[0]["IdCT"].ToString());
                miCurso_Tema_Video.IdVideo = int.Parse(dtCurso_Tema_Video.Rows[0]["IdVideo"].ToString());
                return miCurso_Tema_Video;
            }
            else
            {
                return null;
            }
        }

        public void insertarCurso_Tema_Video(int IdCT, int IdVideo)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", IdCT));
            parametros.Add(new SqlParameter("@IdVideo", IdVideo));
            DataTable dtEmpleado = BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_Insertar", CommandType.StoredProcedure, parametros);

        }

        public void eliminarCurso_Tema_Video(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", id));

            BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_Eliminar", CommandType.StoredProcedure, parametros);
        }

        public void actualizarCurso_Tema_Video(Curso_Tema_Video datosCurso_Tema_Video)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", datosCurso_Tema_Video.IdCTV));
            parametros.Add(new SqlParameter("@IdCT", datosCurso_Tema_Video.IdCT));
            parametros.Add(new SqlParameter("@IdVideo", datosCurso_Tema_Video.IdVideo));

            BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_Actualizar", CommandType.StoredProcedure, parametros);
        }
    }
}