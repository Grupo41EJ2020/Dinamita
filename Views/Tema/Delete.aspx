<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Delete</title>
</head>
<body>
    <h3 class="style2">Esta seguro de eliminar este tema?</h3>
    <fieldset>
        <legend class="style1" style="text-align: center"><strong>Datos generales<br />
         </strong></legend>
        
        <div class="style2"><strong>Id Tema</strong></div>
        <div class="display-field"><%: Model.IdTema %></div>
        
       <div class="style2"><strong>Nombre</strong></div>
        <div class="display-field"><%: Model.Nombre %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <strong><span class="style3">
		    <input type="submit" value="Borrar" /> 
            
		    <%: Html.ActionLink("Regresar", "Index") %>
             </span></strong> 
        </p>
    <% } %>

</body>
</html>

