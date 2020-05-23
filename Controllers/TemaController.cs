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
        RepositorioTema reproTema = new RepositorioTema();

        public ActionResult Index()
        {
            return View(reproTema.ObtenerTema());
        }
        public ActionResult Create()
        { 
            return View();
        }
        [HttpPost]
        public ActionResult Create(string Nombre)
        {
            reproTema.insertarTema(Nombre);
            return RedirectToAction("Index", "Tema");
        }
        public ActionResult Details(int id)
        {
            return View(reproTema.ObtenerTema(id));
        }
        public ActionResult Edit(int id)
        {
            return View(reproTema.ObtenerTema(id));
        }
        [HttpPost]
        public ActionResult Edit(int id, Tema datos)
        {
            datos.IdTema = id;
            reproTema.actualizarTema(datos);
            return RedirectToAction("Index", "Tema");

        }
        public ActionResult Delete(int id)
        {
            return View(reproTema.ObtenerTema(id));
        }
        [HttpPost]
        public ActionResult Delete(int id, FormCollection frm)
        {
            reproTema.eliminarTema(id);
            return RedirectToAction("Index", "Tema");


        }

    }
}
