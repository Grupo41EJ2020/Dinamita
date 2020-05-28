<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Video>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-family: Century Gothic;
            font-size: 15px;
            text-align: center;
            
        }
        
      
        .style2
        {
            font-family: Century Gothic;
            font-size: 25pt;
        }
        
    </style>
</head>
<body bgcolor="White" background="../../Content/TV.jpg">
<h1 style="text-align: center" class="style2">Lista de videos</h1>
    <table align="center">
        <tr>
            <th  class="style1"> Opciones</th>
            <th class="style1">
                ID Video
            </th>
            <th class="style1">
                Nombre
            </th >
            <th class="style1">
                Url
            </th>
            <th class="style1">
                Fecha Publicacion
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td class="style1">
                <%: Html.ActionLink("Editar", "Edit", new {  id=item.IdVideo }) %> |
                <%: Html.ActionLink("Detalles", "Details", new { id = item.IdVideo })%> |
                <%: Html.ActionLink("Borrar", "Delete", new { id = item.IdVideo })%>
            </td>
            <td class="style1">
                <%: item.IdVideo %>
            </td>
            <td class="style1">
                <%: item.Nombre %>
            </td>
            <td class="style1">
                <%: item.Url %>
            </td>
            <td class="style1">
                <%: String.Format("{0:g}", item.FechaPublicacion) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p align="center" class="style1">
        <%: Html.ActionLink("Crear nuevo", "Create") %>
        <a href="/Home/Index"><span class="style1">Regresar</span></a>
    </p>

</body>
</html>

