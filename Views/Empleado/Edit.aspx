<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Editar información Empleado</title>
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
<body background="../../Content/19.gif">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset style="height: 217px; margin-bottom: 0px;">
            <legend class="style5"><span class="style5">Datos del Empleado</span><br 
                class="style5" />
                </legend>
            
            
            <div class="style5" style= "background: white; color: Black; width: 176px;">
                <%: Html.LabelFor(model => model.Nombre) %>
            </div>
            <div class="style5" >
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <div class="style5" style= "background: white; color: Black; width: 176px;">
                <%: Html.LabelFor(model => model.Direccion) %>
            </div>
            <div class="style5">
                <%: Html.TextBoxFor(model => model.Direccion) %>
                <%: Html.ValidationMessageFor(model => model.Direccion) %>
            </div>
            
            <p>
                <input type="submit" value="Guardar" class="style2" /> <span class="style1"><b><span 
                class="style4" style= "background: white">
                </span></b></span>
            </p>
        </fieldset>

    <% } %>

    <div>
        <<span class="style1"><b><span 
                class="style4" style= "background: white">
         <%:Html.ActionLink("Regresar a la lista", "Index") %>
         </span></b></span>
    </div>

</body>
</html>

