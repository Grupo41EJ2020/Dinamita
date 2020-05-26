<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.CursoTema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Details</title>
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
<body background="../../Content/bgDetails.jpg" style="font-family: Verdana">
    <fieldset>
        <legend class="style1" style="text-align: center"><strong>Datos Curso Tema<br />
            </strong></legend>
        
        <div class="style2"><strong>IdCT</strong></div>
        <div class="style2"><strong style="text-align: center"><%: Model.IdCT %></strong></div>
        
        <div class="style2"><strong>IdCurso</strong></div>
        <div class="style2"><strong style="text-align: center"><%: Model.IdCurso %></strong></div>
        
        <div class="style2"><strong>IdTema</strong></div>
        <div class="style2"><strong style="text-align: center"><%: Model.IdTema %></strong></div>
        
    </fieldset>
    <p>
        <strong><span class="style3">
        <%: Html.ActionLink("Editar", "Edit", new { id=Model.IdCT}) %> 
        </span></strong> 
        <span class="style3"><strong>|&nbsp;&nbsp;&nbsp;              
        <%: Html.ActionLink("Regresar", "Index") %>
        </strong>
        </span>
    </p>

</body> 
</html>

