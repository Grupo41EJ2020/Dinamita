<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Editar información del Curso</title>
    <style type="text/css">
        .style1
        {
            font-family: Verdana;
        }
        .style2
        {
            font-family: Verdana;
            font-weight: bold;
            text-align: center;
            font-size: x-large;
        }
        .style3
        {
            font-family: Verdana;
            font-weight: bold;
            text-align: center;
            font-size: 50pt;
            height: 58px;
        }
        .style4
        {
            font-size: x-large;
        }
        .style5
        {
            font-family: Verdana;
            font-weight: bold;
            font-size: x-large;
            color: #FFFFFF;
            height: 26px;
            margin-top: 0px;
        }
        .style6
        {
            font-family: Verdana;
            font-weight: bold;
            text-align: center;
            font-size: x-large;
            color: #FFFFFF;
        }
        .style7
        {
            color: #FFFFFF;
        }
        .style8
        {
            font-family: Verdana;
            color: #FFFFFF;
        }
    </style>
</head>
<body background="../../Content/17.gif">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend class="style8"><span class="style8">Datos del Curso</span><br 
                class="style8" />
                </legend>
           
            
            <div class="style5">
                <%: Html.LabelFor(model => model.Descripcion) %>
            </div>
            <div class="style4">
                <%: Html.TextBoxFor(model => model.Descripcion) %>
                <%: Html.ValidationMessageFor(model => model.Descripcion) %>
            </div>
            
            <div class="style5">
                <%: Html.LabelFor(model => model.IdEmpleado) %>
            </div>
            <div class="style4">
                <%: Html.TextBoxFor(model => model.IdEmpleado) %>
                <%: Html.ValidationMessageFor(model => model.IdEmpleado) %>
            </div>

            </fieldset>
            
            <p>
                <input type="submit" value="Guardar" class="style2" /> <span class="style1"><b><span 
                class="style4" style= "background: white">
                <%: Html.ActionLink("Regresar a la lista", "Index")%>
                </span></b></span>
            </p>
        

    <% } %>

   

</body>
</html>

