<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.CursoTema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso Tema</title>
    <style type="text/css">
        .style1
        {
            width: 333px;
        }
        .style6
        {
            color: #FFFFFF;
            font-family: Verdana;
            font-size: 50pt;
        }
        .style7
        {
            width: 333px;
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
            width: 90px;
            font-size: x-large;
        }
        .style12
        {
            width: 90px;
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
            width: 127px;
            font-size: x-large;
        }
        .style16
        {
            width: 127px;
            height: 22px;
            font-size: x-large;
        }
    </style>
</head>
<body bgcolor="White" background="../../Content/bgLista.jpg">
    <h1 style="text-align: center" class="style6">LISTA DE CURSO VIDEO</h1>

    <p style="font-family: Verdana; font-size: medium; font-weight: bold">
        <span class="style10">
        <%: Html.ActionLink("Agregar Nuevo", "Create") %>   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <a href="/Home/Index"><span class="style10">Regresar</span></a>
    </p>

    <table align="center" 
        
        style="border: medium groove #FFFFFF; font-family: Verdana; color: #FFFFFF;">
        <tr>
            <th class="style1"></th>
            <th class="style11">
                IdCT
            </th>
            <th class="style13">
                IdCurso
            </th>
            <th class="style15">
                IdTema
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td class="style7">
                <%: Html.ActionLink("Edit", "Edit", new { id=item.IdCT }) %> |
                <%: Html.ActionLink("Details", "Details", new {id=item.IdCT })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.IdCT })%>
            </td>
            <td class="style12">
                <%: item.IdCT %>
            </td>
            <td class="style14">
                <%: item.IdCurso %>
            </td>
            <td class="style16">
                <%: item.IdTema %>
            </td>
        </tr>
    
    <% } %>

    </table>

    </body>
</html>

