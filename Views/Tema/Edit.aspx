<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit</title>
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
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend class="style1" style="text-align: center"><strong>Datos Tema<br />
            </strong></legend>
            
            
            <div class="style2"><strong>Nombre</strong></div>
                
            <div class="style2">
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <p>
                <strong><span class="style3">
                <input type="submit" value="Editar" />
                </span></strong> 
            </p>
        </fieldset>

    <% } %>

    <div>
        <strong><span class="style3">
        <%: Html.ActionLink("Regresar", "Index") %>
         </span></strong>
    </div>

</body>
</html>

