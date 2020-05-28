<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Details</title>
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
    <fieldset>
       <legend class="style1" style="text-align: center"><strong>Datos Tema<br />
            </strong></legend>
        
        
         <div class="style1"><strong>IdVideo</strong></div>
        <div class="display-field"><%: Model.IdVideo %></div>
        
        
         <div class="style1"><strong>Nombre</strong></div>
        <div class="display-field"><%: Model.Nombre %></div>
        
        
         <div class="style1"><strong>Url</strong></div>
        <div class="display-field"><%: Model.Url %></div>
        
       
         <div class="style1"><strong>FechaPublicacion</strong></div>
        <div class="display-field"><%: String.Format("{0:g}", Model.FechaPublicacion) %></div>
        
    </fieldset>
    <p>
        <strong><span class="style1">
        <%: Html.ActionLink("Editar", "Edit", new { id=Model.IdVideo }) %> |
         </span></strong>
        <strong><span class="style1">
        <%: Html.ActionLink("Regresar", "Index") %>
             </span></strong>
    </p>

</body>
</html>

