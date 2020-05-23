using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Controllers
{
    public class TemaController : Controller
    {
        //
        // GET: /Tema/

        public ActionResult Index()
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
            
            return View(Isttemas);
        }
        public ActionResult Create()
        { 
            return View();
        }
        [HttpPost]
        public ActionResult Create(string Nombre)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();

            parametros.Add(new SqlParameter("@Nombre", Nombre));


            BaseHelper.ejecutarSentencia("sp_Tema_Insertar", CommandType.StoredProcedure, parametros);

            return RedirectToAction("Index", "Tema");
        }
        public ActionResult Details(int id)
        {
            
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));
            DataTable dttema = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);
            Tema ttema = new Tema();
            if (dttema.Rows.Count > 0)
            {
                ttema.IdTema = int.Parse(dttema.Rows[0]["IdTema"].ToString());
                ttema.Nombre = dttema.Rows[0]["Nombre"].ToString();

                return View(ttema);
            }
            else
            {
                return View("Error no es posible mostrar los datos");
            }

        }
        public ActionResult Edit(int id)
        {

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));
            DataTable dttema = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);
            Tema ttema = new Tema();
            if (dttema.Rows.Count > 0)
            {
                ttema.IdTema = int.Parse(dttema.Rows[0]["IdTema"].ToString());
                ttema.Nombre = dttema.Rows[0]["Nombre"].ToString();

                return View(ttema);
            }
            else
            {
                return View("Error no Existe");
            }

        }
        [HttpPost]
        public ActionResult Edit(int id, Tema datos)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));
            parametros.Add(new SqlParameter("@Nombre", datos.Nombre));


            BaseHelper.ejecutarConsulta("sp_Tema_Actualizar", CommandType.StoredProcedure, parametros);
            return RedirectToAction("Index", "Tema");


        }
        public ActionResult Delete(int id)
        {
            
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));
            DataTable dttema = BaseHelper.ejecutarConsulta("sp_Tema_ConsultarPorID", CommandType.StoredProcedure, parametros);
            Tema ttema = new Tema();
            if (dttema.Rows.Count > 0)
            {
                ttema.IdTema = int.Parse(dttema.Rows[0]["IdTema"].ToString());
                ttema.Nombre = dttema.Rows[0]["Nombre"].ToString();

                return View(ttema);
            }
            else
            {
                return View("Error, intentalo de nuevo");
            }

        }
        [HttpPost]
        public ActionResult Delete(int id, FormCollection frm)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));
            BaseHelper.ejecutarConsulta("sp_Tema_Eliminar", CommandType.StoredProcedure, parametros);
            return RedirectToAction("Index", "Tema");


        }

    }
}
