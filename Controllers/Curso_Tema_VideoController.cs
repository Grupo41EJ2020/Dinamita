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
        RepositorioCurso_Tema_Video RepoCursoTemaVideo =new RepositorioCurso_Tema_Video();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ConsultarTodo()
        {
           
            return View(RepoCursoTemaVideo.obtenerCurso_Tema_Video());

        }

        public ActionResult Details(int id)
        {
            return View (RepoCursoTemaVideo.obtenerCurso_Tema_Video(id));
        }
        
        public ActionResult Delete(int id)
        {
            return View(RepoCursoTemaVideo.obtenerCurso_Tema_Video(id));

        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection frm)
        {
            RepoCursoTemaVideo.eliminarCurso_Tema_Video(id);
            return RedirectToAction("ConsultarTodo");
        }

        public ActionResult Edit(int id)
        {
            return View(RepoCursoTemaVideo.obtenerCurso_Tema_Video(id));
        }

        [HttpPost]
        public ActionResult Edit(int id, Curso_Tema_Video datos)
        {
            datos.IdCTV = id;
            RepoCursoTemaVideo.actualizarCurso_Tema_Video(datos);
            return RedirectToAction("ConsultarTodo");
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(int IdCT, int IdVideo)
        {
            RepoCursoTemaVideo.insertarCurso_Tema_Video(IdCT, IdVideo);
            return RedirectToAction("ConsultarTodo");
        }
    }
}
