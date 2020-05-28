<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Elimnar Empleado</title>
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
            height: 30px;
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
<body background="../../Content/3.gif">
    <h3 style="text-align: center" class="style5">¿Seguro que quiere eliminar la siguiente información?</h3>
    <fieldset style="margin-right: 0px">
        <legend class="style8"><span class="style8">Datos del Empleado</span><br 
                class="style8" />
        </legend>
        
        <div class="style5">IdEmpleado</div>
        <div class="style4" style= "color:White"><%: Model.IdEmpleado %></div>
        
        <div class="style5">Nombre</div>
        <div class="style4" style= "color:White"><%: Model.Nombre %></div>
        
        <div class="style5">Direccion</div>
        <div class="style4"style= "color:White"><%: Model.Direccion %></div>
        
    </fieldset>
    <span class="style6">
    <% using (Html.BeginForm()) { %>
    </span>
        <p>
		    <input type="submit" value="Borrar" class="style2" /> <span class="style1"><b><span 
                class="style4" style= "background: white">|
		     <%:Html.ActionLink("Regresar a la lista", "Index") %>
             </span></b></span>
        </p>
    <% } %>

</body>
</html>

