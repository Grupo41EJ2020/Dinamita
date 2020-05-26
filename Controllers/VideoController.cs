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
    public class VideoController : Controller
    {
        RepositorioVideo repoVideo = new RepositorioVideo();
        public ActionResult Index()
        {
            return View(repoVideo.obtenerVideos());
        }
        public ActionResult Details(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Video datos)
        {
            repoVideo.insertarVideo(datos);
            return RedirectToAction("Index","Video");
        }
        public ActionResult Delete(int id)
        {

            return View(repoVideo.obtenerVideo(id));

        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection frm)
        {
            repoVideo.eliminarVideo(id);
            return RedirectToAction("Index", "Video");
        }
        public ActionResult Edit(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }

        [HttpPost]
        public ActionResult Edit(int id, Video datos)
        {
            datos.IdVideo = id;
            repoVideo.actualizarVideo(datos);
            return RedirectToAction("Index", "Video");
        }
            
        

    }
}
