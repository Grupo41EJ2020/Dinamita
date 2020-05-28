<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Video>" %>

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
<body bgcolor="White" background="../../Content/TV3.jpg">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend class="style1" style="text-align: center"><strong>Datos a insertar<br /></strong></legend>
            
            <div class="style3"><strong>Nombre</strong></div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <div class="style3"><strong>Url</strong></div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Url) %>
                <%: Html.ValidationMessageFor(model => model.Url) %>
            </div>
            
            <div class="style3"><strong>FechaPublicacion</strong></div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.FechaPublicacion) %>
                <%: Html.ValidationMessageFor(model => model.FechaPublicacion) %>
            </div>
            
            <p>
                 <span class="style2"><strong> 
                <input type="submit" value="Crear nuevo video" />
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

