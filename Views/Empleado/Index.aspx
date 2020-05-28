<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Empleado>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Consultar Empleados</title>
    <style type="text/css">
        .style1
        {
<<<<<<< HEAD
            width: 782px;
=======
            width: 333px;
>>>>>>> 8017117cf8e35545ce758c09f5aed1d95f573007
        }
        .style6
        {
            color: #FFFFFF;
            font-family: Verdana;
            font-size: 50pt;
        }
        .style7
        {
<<<<<<< HEAD
            width: 782px;
=======
            width: 333px;
>>>>>>> 8017117cf8e35545ce758c09f5aed1d95f573007
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
<<<<<<< HEAD
            width: 227px;
=======
            width: 90px;
>>>>>>> 8017117cf8e35545ce758c09f5aed1d95f573007
            font-size: x-large;
        }
        .style12
        {
<<<<<<< HEAD
            width: 227px;
=======
            width: 90px;
>>>>>>> 8017117cf8e35545ce758c09f5aed1d95f573007
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
<<<<<<< HEAD
            width: 465px;
=======
            width: 127px;
>>>>>>> 8017117cf8e35545ce758c09f5aed1d95f573007
            font-size: x-large;
        }
        .style16
        {
<<<<<<< HEAD
            width: 465px;
=======
            width: 127px;
>>>>>>> 8017117cf8e35545ce758c09f5aed1d95f573007
            height: 22px;
            font-size: x-large;
        }
    </style>
</head>
<<<<<<< HEAD
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
=======
<body bgcolor="White" background="../../Content/emp.index.jpg" />

<h1 style="text-align: center" class="style6">LISTA DE EMPLEADOS</h1>

    <table align="center" style="border: medium groove #FFFFFF; font-family: Verdana; color: #FFFFFF;">
        <tr>
            <th class="style1"></th>
            <th class="style10">
                IdEmpleado
            </th>
            <th class="style10">
                Nombre
            </th>
            <th class="style10">
>>>>>>> 8017117cf8e35545ce758c09f5aed1d95f573007
                Direccion
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
<<<<<<< HEAD
            <td class="style7">
=======
            <td class="style10">
>>>>>>> 8017117cf8e35545ce758c09f5aed1d95f573007
                <%: Html.ActionLink("Editar", "Edit", new { id=item.IdEmpleado }) %> |
                <%: Html.ActionLink("Ver Detalles", "Details", new {id=item.IdEmpleado })%> |
                <%: Html.ActionLink("Borrar", "Delete", new {id=item.IdEmpleado })%>
            </td>
<<<<<<< HEAD
            <td class="style12">
                <%: item.IdEmpleado %>
            </td>
            <td class="style14">
                <%: item.Nombre %>
            </td>
            <td class="style16">
=======
            <td class="style10">
                <%: item.IdEmpleado %>
            </td>
            <td class="style10">
                <%: item.Nombre %>
            </td>
            <td class="style10">
>>>>>>> 8017117cf8e35545ce758c09f5aed1d95f573007
                <%: item.Direccion %>
            </td>
        </tr>
    
    <% } %>

    </table>

<<<<<<< HEAD
    <p
        style="font-family: Verdana; font-size: medium; font-weight: bold; color:White">
        <span class="style10" style="color:White">
        <%: Html.ActionLink("Crear Nuevo Empleado", "Create") %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <a href="/Home/Index"><span style= "color:White" ;class="style10">Regresar</span></a>
=======
    <p style="font-family: Verdana; font-size: medium; font-weight: bold">
        <span class="style10">
        <%: Html.ActionLink("Crear Nuevo Empleado", "Create") %>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <a href="/Home/Index"><span class="style10">Regresar a la Lista</span></a>
>>>>>>> 8017117cf8e35545ce758c09f5aed1d95f573007
    </p>

</body>
</html>

