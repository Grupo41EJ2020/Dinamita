<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Detalles</title>
    <style type="text/css">
        .style1
        {
            font-family: Verdana;
            font-size: 50pt;
        }
        .style2
        {
            font-size: large;
        }
        .style3
        {
            font-size: x-large;
        }
    </style>
</head>
<body background="../../Content/15.gif" style="font-family: Verdana">
    <fieldset>
        <legend class="style1" style="text-align: center; color: white"><strong>Datos del Empleado<br />
            </strong></legend>
        
        <div class="style2" style="background: white">IdEmpleado</div>
        <div class="style2" style="background: white"><%: Model.IdEmpleado %></div>
        
        <div class="style2" style="background: white">Nombre</div>
        <div class="style2" style="background: white"><%: Model.Nombre %></div>
        
        <div class="style2" style="background: white">Direccion</div>
        <div class="style2" style="background: white"><%: Model.Direccion %></div>
        
    </fieldset>
    <p>
        <strong><span class="style3">
        <%: Html.ActionLink("Editar ", "Edit", new {id=Model.IdEmpleado}) %> 
        </span></strong> <span class="style3"><strong>|
       
        <%:Html.ActionLink("Regresar a la lista", "Index") %>
        </strong>
        </span>
    </p>

</body>
</html>

