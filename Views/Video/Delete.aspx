<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Video>" %>

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
<body bgcolor="White" background="../../Content/TV3.jpg">
    <h3 class="style2">Esta seguro de eliminar este video?</h3>
    <fieldset>
        <legend class="style1" style="text-align: center"><strong>Datos generales<br />
         </strong></legend>
        
        <div class="style2"><strong>IdVideo</strong></div>
        <div class="display-field"><%: Model.IdVideo %></div>

        <div class="style2"><strong>Nombre</strong></div>
        <div class="display-field"><%: Model.Nombre %></div>
        
        
        <div class="style2"><strong>Url</strong></div>
        <div class="display-field"><%: Model.Url %></div>
        
        
        <div class="style2"><strong>FechaPublicacion</strong></div>
        <div class="display-field"><%: String.Format("{0:g}", Model.FechaPublicacion) %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
           <strong><span class="style2">
		    <input type="submit" value="Borrar" /> |
		    <%: Html.ActionLink("Regresar", "Index") %>
             </span></strong> 
        </p>
    <% } %>

</body>
</html>

