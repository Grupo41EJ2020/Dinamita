using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MVCLaboratorio.Models
{
    interface ICurso_Tema
    {

        List<CursoTema> obtenerCursoTema();

        CursoTema obtenerCursoTema(int ICursoTema);

        void insertarCursoTema(CursoTema datosCursoTema);

        void elimnarCursoTema(int CursoTema);

        void actualizarCursoTema(CursoTema datosCursoTema);

    }
}
