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
    public class Curso_TemaController : Controller
    {
        RepositorioCurso_Tema repoCursoTema = new RepositorioCurso_Tema();

        public ActionResult Index()
        {
            return View(repoCursoTema.obtenerCursoTema());
        }

        public ActionResult Details(int id)
        {
            return View(repoCursoTema.obtenerCursoTema(id));
        }

        public ActionResult Delete(int id)
        {
            return View(repoCursoTema.obtenerCursoTema(id));
        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection frm)
        {
            repoCursoTema.eliminarCursoTema(id);
            return RedirectToAction("Index");
        }

        public ActionResult Edit(int id)
        {
            return View(repoCursoTema.obtenerCursoTema(id));

        }
        [HttpPost]
        public ActionResult Edit(int id, CursoTema datos)
        {
            datos.IdCT = id;
            repoCursoTema.actualizarCursoTema(datos);
            return RedirectToAction("Index");
        }

        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(CursoTema datos)
        {

            repoCursoTema.insertarCursoTema(datos);
            return RedirectToAction("Index");
        }

    }
}
