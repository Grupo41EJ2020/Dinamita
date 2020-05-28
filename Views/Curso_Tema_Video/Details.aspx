<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Detalles</title> <style type="text/css">
        .style1
        {
             font-family: Century Gothic;
            font-size: 20px;
            
        }
        .style2
        {
             font-family: Century Gothic;
            font-size: 15px;
        }
        
    </style>
</head>
<body bgcolor="White" background="../../Content/tcv2.jpg" />
    <fieldset>
        <legend class="style1" style="text-align: center"><strong>Datos del Curso/Tema/Video</strong></legend> 
        
        <div class="style1"><strong>IdCTV</strong></div>
        <div class="style2"><%: Model.IdCTV %></div>
        
        <div class="style1"><strong>IdCT</strong></div>
        <div class="style2"><%: Model.IdCT %></div>
        
        <div class="style1"><strong>IdVideo</strong></div>
        <div class="style2"><%: Model.IdVideo %></div>
        
    </fieldset>
    <p>
    <strong><span class="style1">
        <%: Html.ActionLink("Editar", "Edit", new { id=Model.IdCTV }) %> 
          </span></strong>
        <strong><span class="style1">
        <%: Html.ActionLink("Regresar a la Lista", "ConsultarTodo") %>
          </span></strong>
    </p>

</body>
</html>

