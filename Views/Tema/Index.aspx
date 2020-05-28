<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Tema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
     <style type="text/css">
        .style1
        {
            font-family: Century Gothic;
            font-size: 20px;
            text-align: center;
            
        }
        
      
        .style2
        {
            font-family: Century Gothic;
            font-size: 25pt;
        }
        
    </style>
</head>
<body bgcolor="White" background="../../Content/untitled.jpg">
<h1 style="text-align: center" class="style2">Lista de temas</h1>
    <table align="center" >
       <tr>
            <th  class="style1"> Opciones</th>
           
            <th  class="style1">
                ID Tema
            </th>

            <th  class="style1">
                Nombre
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td  class="style1">
                <%: Html.ActionLink("Editar", "Edit", new { id = item.IdTema })%> |
                <%: Html.ActionLink("Detalles", "Details", new { id = item.IdTema })%> |
                <%: Html.ActionLink("Borrar", "Delete", new { id = item.IdTema })%>
            </td>
            <td class="style1">
                <%: item.IdTema %>
            </td>
          
            <td class="style1">
                <%: item.Nombre %>
            </td>
        </tr>
    
    <% } %>

    </table>

   <p align="center" class="style1">
       
        <%: Html.ActionLink("Crear", "Create") %>
        <a href="/Home/Index"><span class="style10">Regresar</span></a>
    </p>

</body>
</html>

