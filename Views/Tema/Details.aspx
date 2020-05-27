<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Details</title>
    <style type="text/css">
        .style1
        {
            font-family: Century Gothic;
            font-size: 20pt;
        }
        .style2
        {
            font-size: Century Gothic;
        }
        .style3
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <fieldset>
        <legend class="style1" style="text-align: center"><strong>Datos Tema<br />
            </strong></legend>
        
        <div class="style2"><strong>Id Tema</strong></div>
        <div class="display-field"><%: Model.IdTema %></div>
        
        <div class="style2"><strong>Nombre</strong></div>
        <div class="display-field"><%: Model.Nombre %></div>
        
    </fieldset>
    <p>
        <strong><span class="style3">
        <%: Html.ActionLink("Editar", "Edit", new { id = Model.IdTema })%> 
        </span></strong>
        <strong><span class="style3">
        <%: Html.ActionLink("Regresar", "Index") %>
        </span></strong>
    </p>

</body>
</html>

