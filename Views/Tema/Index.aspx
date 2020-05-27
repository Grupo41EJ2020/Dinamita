<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Tema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <style type="text/css">
        .style1
        {
            font-family: Century Gothic;
            font-size: 20px;
        }
        
        .style2
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <table>
       <tr>
            <th class="style1"></th>
           
            <th class="style1">
                ID Tema
            </th>
            <th></th>

            <th class="style1">
                Nombre
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td class="style2">
                <%: Html.ActionLink("Editar", "Edit", new { id = item.IdTema })%> |
                <%: Html.ActionLink("Detalles", "Details", new { id = item.IdTema })%> |
                <%: Html.ActionLink("Borrar", "Delete", new { id = item.IdTema })%>
            </td>
            <td class="style1">
                <%: item.IdTema %>
            </td>
            <td> </td>
            <td class="style1">
                <%: item.Nombre %>
            </td>
        </tr>
    
    <% } %>

    </table>

   <p class="style2">
       
        <%: Html.ActionLink("Crear", "Create") %>
    </p>

</body>
</html>

