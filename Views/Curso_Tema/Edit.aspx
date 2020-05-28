<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.CursoTema>" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Edit</title>
    <style type="text/css">
        .style1
        {
            font-family: Verdana;
            font-size: 50pt;
        }
        .style3
        {
            font-family: Verdana;
            font-size: large;
        }
        .style4
        {
            text-align: center;
        }
        .style5
        {
            font-family: Verdana;
            font-size: large;
            text-align: center;
        }
        .style6
        {
            font-family: Verdana;
        }
    </style>
</head>
<body background="../../Content/bgUpdate.jpg">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend class="style1" style="text-align: center"><strong>Datos Curso Tema</strong></legend>
            
            <div class="style6">
                <strong>
                <%: Html.LabelFor(model => model.IdCT) %>
                </strong>
            </div>
            <div class="style5">
                <strong>
                <%: Html.TextBoxFor(model => model.IdCT) %>
                <%: Html.ValidationMessageFor(model => model.IdCT) %>
                </strong>
            </div>
            
            <div class="style5">
                <strong>
                <%: Html.LabelFor(model => model.IdCurso) %>
                </strong>
            </div>
            <div class="style5">
                <strong>
                <%: Html.TextBoxFor(model => model.IdCurso) %>
                <%: Html.ValidationMessageFor(model => model.IdCurso) %>
                </strong>
            </div>
            
            <div class="style5">
                <strong>
                <%: Html.LabelFor(model => model.IdTema) %>
                </strong>
            </div>
            <div class="style5">
                <strong>
                <%: Html.TextBoxFor(model => model.IdTema) %>
                <%: Html.ValidationMessageFor(model => model.IdTema) %>
                </strong>
            </div>
            
            <p class="style4">
                <strong>
                <input type="submit" value="Guardar" class="style3" /></strong><span 
                    class="style3"> </span>
            </p>
        </fieldset>

    <span class="style3">

    <% } %>

    </span>

    <div class="style3">
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>

</body>
</html>

