<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Editar</title>
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
<body bgcolor="White" background="../../Content/tcv2.jpg" />

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend class="style1" style="text-align: center"><strong>Datos</strong></legend>
            
           <div class="style2"><strong>IdCT</strong></div>

            <div class="style2">
                <%: Html.TextBoxFor(model => model.IdCT) %>
                <%: Html.ValidationMessageFor(model => model.IdCT) %>
            </div>
            
           <div class="style2"><strong>IdVideo</strong></div>

            <div class="style2">
                <%: Html.TextBoxFor(model => model.IdVideo) %>
                <%: Html.ValidationMessageFor(model => model.IdVideo) %>
            </div>
            
            <p>
            <strong><span class="style3">
                <input type="submit" value="Guardar" />
                </span></strong> 
            </p>
        </fieldset>

    <% } %>

    <div>
     <strong><span class="style3">
        <%: Html.ActionLink("Regresar a la Lista", "ConsultarTodo") %>
        </span></strong>
    </div>

</body>
</html>

