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
    public class CursoController : Controller
    {
        RepositorioCurso repoCurso = new RepositorioCurso();

        public ActionResult Index()
        {
            return View(repoCurso.ObtenerCurso());
        }


        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Curso datos)
        {
            repoCurso.insertarCurso(datos);
            return RedirectToAction("Index", "Curso");
        }


        public ActionResult Details(int id)
        {
            return View(repoCurso.ObtenerCurso(id));
        }


        public ActionResult Edit(int id)
        {
            return View(repoCurso.ObtenerCurso(id));
        }
        [HttpPost]
        public ActionResult Edit(int id, Curso datos)
        {
            datos.IdCurso = id;
            repoCurso.actualizarCurso(datos);
            return RedirectToAction("Index", "Curso");

        }


        public ActionResult Delete(int id)
        {
            return View(repoCurso.ObtenerCurso(id));
        }
        [HttpPost]
        public ActionResult Delete(int id, FormCollection frm)
        {
            repoCurso.eliminarCurso(id);
            return RedirectToAction("Index", "Curso");


        }

    }
}
