<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Empleado>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Consultar Empleados</title>
    <style type="text/css">
        .style1
        {
            width: 782px;
        }
        .style6
        {
            color: #FFFFFF;
            font-family: Verdana;
            font-size: 50pt;
        }
        .style7
        {
            width: 782px;
            height: 22px;
            font-size: x-large;
            font-weight: 700;
        }
        .style10
        {
            font-size: large;
        }
        .style11
        {
            width: 227px;
            font-size: x-large;
        }
        .style12
        {
            width: 227px;
            height: 22px;
            font-size: x-large;
        }
        .style13
        {
            width: 129px;
            font-size: x-large;
        }
        .style14
        {
            width: 129px;
            height: 22px;
            font-size: x-large;
        }
        .style15
        {
            width: 465px;
            font-size: x-large;
        }
        .style16
        {
            width: 465px;
            height: 22px;
            font-size: x-large;
        }
    </style>
</head>

<body bgcolor="White" background="../../Content/10.gif">
    <h1 style="text-align: center" class="style6">LISTA DE EMPLEADOS</h1>
  
    <table align="center"
        style="border: medium groove #FFFFFF; font-family: Verdana; color: black; width: 1113px; text-align:center; background: white">
        <tr>
            <th class="style1"></th>
            <th class="style11">
                IdEmpleado
            </th>
            <th class="style13">
                Nombre
            </th>
            <th class="style15">
                Direccion
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td class="style7">

                <%: Html.ActionLink("Editar", "Edit", new { id=item.IdEmpleado }) %> |
                <%: Html.ActionLink("Ver Detalles", "Details", new {id=item.IdEmpleado })%> |
                <%: Html.ActionLink("Borrar", "Delete", new {id=item.IdEmpleado })%>
            </td>

            <td class="style12">
                <%: item.IdEmpleado %>
            </td>
            <td class="style14">
                <%: item.Nombre %>
            </td>
            <td class="style16">
                <%: item.Direccion %>
            </td>
        </tr>
    
    <% } %>

    </table>


    <p
        style="font-family: Verdana; font-size: medium; font-weight: bold; color:White">
        <span class="style10" style="color:White">
        <%: Html.ActionLink("Crear Nuevo Empleado", "Create") %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <a href="/Home/Index"><span style= "color:White" ;class="style10">Regresar</span></a>
    </p>

</body>
</html>

