using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ITemas
    {
        List<Tema> ObtenerTema();
        Tema ObtenerTema(int IdTema);
        void insertarTema(string datosTema);
        void eliminarTema(int IdTema);
        void actualizarTema(Tema datosTema);
    }
}