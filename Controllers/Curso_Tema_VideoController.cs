using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MVCLaboratorio.Models;
using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Controllers
{
    public class Curso_Tema_VideoController : Controller
    {
        //
        // GET: /Curso_Tema_Video/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ConsultarTodo()
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
            return View(IstCurso_Tema_Video);

        }
        public ActionResult Details(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", id));
            DataTable dtCurso_Tema_Video = BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_ConsultarPorID", CommandType.StoredProcedure, parametros);
            Curso_Tema_Video miCurso_Tema_Video = new Curso_Tema_Video();
            if (dtCurso_Tema_Video.Rows.Count > 0)
            {
                miCurso_Tema_Video.IdCTV = int.Parse(dtCurso_Tema_Video.Rows[0]["IdCTV"].ToString());
                miCurso_Tema_Video.IdCT = int.Parse(dtCurso_Tema_Video.Rows[0]["IdCT"].ToString());
                miCurso_Tema_Video.IdVideo = int.Parse(dtCurso_Tema_Video.Rows[0]["IdVideo"].ToString());
                return View(miCurso_Tema_Video);
            }
            else
            {
                return View("ERROR");
            }
        }
            public ActionResult Delete(int id)
             {
           List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", id));
            DataTable dtCurso_Tema_Video = BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_ConsultarPorID", CommandType.StoredProcedure, parametros);
            Curso_Tema_Video miCurso_Tema_Video = new Curso_Tema_Video();
            if (dtCurso_Tema_Video.Rows.Count > 0)
            {
                miCurso_Tema_Video.IdCTV = int.Parse(dtCurso_Tema_Video.Rows[0]["IdCTV"].ToString());
                miCurso_Tema_Video.IdCT = int.Parse(dtCurso_Tema_Video.Rows[0]["IdCT"].ToString());
                miCurso_Tema_Video.IdVideo = int.Parse(dtCurso_Tema_Video.Rows[0]["IdVideo"].ToString());
                return View(miCurso_Tema_Video);
            }
            else
            {
                return View("ERROR");
            }

        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection frm)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", id));

            BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_Eliminar", CommandType.StoredProcedure, parametros);
            return RedirectToAction("ConsultarTodo");
        }

        public ActionResult Edit(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", id));
            DataTable dtCurso_Tema_Video = BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_ConsultarPorID", CommandType.StoredProcedure, parametros);
            Curso_Tema_Video miCurso_Tema_Video = new Curso_Tema_Video();
            if (dtCurso_Tema_Video.Rows.Count > 0)
            {
                miCurso_Tema_Video.IdCTV = int.Parse(dtCurso_Tema_Video.Rows[0]["IdCTV"].ToString());
                miCurso_Tema_Video.IdCT = int.Parse(dtCurso_Tema_Video.Rows[0]["IdCT"].ToString());
                miCurso_Tema_Video.IdVideo = int.Parse(dtCurso_Tema_Video.Rows[0]["IdVideo"].ToString());
                return View(miCurso_Tema_Video);
            }
            else
            {
                return View("ERROR");
            }
        }

        [HttpPost]
        public ActionResult Edit(int id, Curso_Tema_Video datos)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", id));
            parametros.Add(new SqlParameter("@IdCT", datos.IdCT));
            parametros.Add(new SqlParameter("@IdVideo", datos.IdVideo));

            BaseHelper.ejecutarConsulta("sp_Curso_Tema_Video_Actualizar", CommandType.StoredProcedure, parametros);
            return RedirectToAction("ConsultarTodo");
        }
        
    }
}
