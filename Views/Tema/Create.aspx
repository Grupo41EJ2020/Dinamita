<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Create</title>
     <style type="text/css">
        .style1
        {
            font-family: Century Gothic;
            font-size: 20px;
        }
       
        .style2
        {
            font-size: large;
        }
        .style3
        {
            width: 15px;
            font-size: Century Gothic;
        }
        
    </style>
</head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend class="style1" style="text-align: center"><strong>Datos a insertar<br /></strong></legend>
            <div class="style3"><strong>Nombre</strong></div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <p>
                <span class="style2"><strong> 
                <input type="submit" value="Crear" />
                 </strong> </span>
            </p>
        </fieldset>

    <% } %>

    <div>
       <span class="style2"><strong> 
        <%: Html.ActionLink("Regresar", "Index") %>
         </strong> </span>
    </div>

</body>
</html>

