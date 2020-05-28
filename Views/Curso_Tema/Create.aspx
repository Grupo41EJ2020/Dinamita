<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.CursoTema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Create</title>
    <style type="text/css">
        .style1
        {
            font-size: 50pt;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</head>
<body background="../../Content/bgCreate.jpg">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset style="font-family: Verdana; font-size: x-large; font-weight: 700; color: #FFFFFF">
            <legend class="style1" style="text-align: center">Datos Curso Tema</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdCT) %>
            </div>
            <div class="style2">
                <%: Html.TextBoxFor(model => model.IdCT) %>
                <%: Html.ValidationMessageFor(model => model.IdCT) %>
            </div>
            
            <div class="style2">
                <%: Html.LabelFor(model => model.IdCurso) %>
            </div>
            <div class="style2">
                <%: Html.TextBoxFor(model => model.IdCurso) %>
                <%: Html.ValidationMessageFor(model => model.IdCurso) %>
            </div>
            
            <div class="style2">
                <%: Html.LabelFor(model => model.IdTema) %>
            </div>
            <div class="style2">
                <%: Html.TextBoxFor(model => model.IdTema) %>
                <%: Html.ValidationMessageFor(model => model.IdTema) %>
            </div>
            
            <p class="style2">
                <input type="submit" value="Crear" class="style3" />
            </p>
        </fieldset>

    <% } %>

    <div style="font-family: Verdana; font-size: xx-large; font-weight: 700">
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>

</body>
</html>

