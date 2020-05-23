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
    public class EmpleadoController : Controller
    {
        //
        // GET: /Empleado/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ConsultarTodo()
        {
            //Obtener todos los Empleados
            DataTable dtEmpleados = BaseHelper.ejecutarConsulta("sp_Empleado_ConsultarTodo", CommandType.StoredProcedure);

            List<Empleado> lstEmpleados = new List<Empleado>();

            foreach (DataRow item in dtEmpleados.Rows)
            {
                Empleado datosEmpleado= new Empleado();
                datosEmpleado.IdEmpleado = int.Parse(item["IdEmpleado"].ToString());
                datosEmpleado.Nombre = item["Nombre"].ToString();
                datosEmpleado.Direccion = item["Direccion"].ToString();

                lstEmpleados.Add(datosEmpleado);           
            }

            return View(lstEmpleados);
        }

        public ActionResult Details(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", id));

            DataTable dtEmpleado = BaseHelper.ejecutarConsulta("sp_Empleado_ConsultarPorID", CommandType.StoredProcedure, parametros);

            Empleado miEmpleado = new Empleado();

            if (dtEmpleado.Rows.Count > 0)
            {
                miEmpleado.IdEmpleado = int.Parse(dtEmpleado.Rows[0]["IdEmpleado"].ToString());
                miEmpleado.Nombre = dtEmpleado.Rows[0]["Nombre"].ToString();
                miEmpleado.Direccion= dtEmpleado.Rows[0]["Direccion"].ToString();
                return View(miEmpleado);
            }

            else
            {
                return View("Error");
            }

            
        }
    }
}
