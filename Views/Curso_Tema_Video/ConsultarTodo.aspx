﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>Consultar Curso Tema Video</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                IdCTV
            </th>

        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new { id=item.IdCTV }) %> |
                <%: Html.ActionLink("Ver Detalles", "Details", new {id=item.IdCTV })%> |
                <%: Html.ActionLink("Borrar", "Delete", new {id=item.IdCTV })%>
            </td>
            <td>
                <%: item.IdCTV %>
            </td>

        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear Nuevo", "Create") %>
    </p>

</body>
</html>