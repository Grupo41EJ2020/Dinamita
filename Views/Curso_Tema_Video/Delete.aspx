<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Delete</title>
     <style type="text/css">
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
    <h3 class="style2">¿Seguro que desea eliminar la siguiente información?</h3>
    <fieldset>
        <legend class="style1" style="text-align: center"><strong>Datos</strong></legend>
        
        <div class="style2"><strong>IdCTV</strong></div>
        <div class="display-field"><%: Model.IdCTV %></div>
        
        <div class="style2"><strong>IdCT</strong></div>
        <div class="display-field"><%: Model.IdCT %></div>
        
        <div class="style2"><strong>IdVideo</strong></div>
        <div class="display-field"><%: Model.IdVideo %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
        <strong><span class="style2">
		    <input type="submit" value="Eliminar" /> |

		    <%: Html.ActionLink("Regresar a la Lista", "ConsultarTodo") %>
            </span></strong> 
        </p>
    <% } %>

</body>
</html>

