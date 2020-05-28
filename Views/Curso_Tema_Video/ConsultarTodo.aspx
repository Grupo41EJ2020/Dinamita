<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>Consultar Curso Tema Video</title>
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
<body bgcolor="White" background="../../Content/tcv.jpg" />
 <h1 style="text-align: center" class="style6">Lista Curso Tema Video</h1>
    <table align="center" 
        
        style="border: medium groove #FFFFFF; font-family: Verdana; color: #FFFFFF;">
        <tr>
            <th></th>
            <th class="style1">
                IdCTV
            </th>

        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td class="style1">
                <%: Html.ActionLink("Editar", "Edit", new { id=item.IdCTV }) %> |
                <%: Html.ActionLink("Ver Detalles", "Details", new {id=item.IdCTV })%> |
                <%: Html.ActionLink("Borrar", "Delete", new {id=item.IdCTV })%>
            </td>
            <td class="style1">
                <%: item.IdCTV %>
            </td>

        </tr>
    
    <% } %>

    </table>

    <p align="center" class="style1">
        <%: Html.ActionLink("Crear Nuevo", "Create") %>
        <a href="/Home/Index"><span class="style10">Regresar</span></a>
    </p>

</body>
</html>
