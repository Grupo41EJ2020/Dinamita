<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Crear Nuevo Curso</title>
    <style type="text/css">
        .style1
        {
            width: 782px;
        }
        .style6
        {
            color: #FFFFFF;
            font-family: Verdana;
            font-size: 50pt;
        }
        .style7
        {
            width: 190px;
            height: 28px;
            font-size: x-large;
            font-weight: 700;
        }
        .style10
        {
            font-size: large;
        }
        .style11
        {
            width: 227px;
            font-size: x-large;
        }
        .style12
        {
            width: 227px;
            height: 22px;
            font-size: x-large;
        }
        .style13
        {
            width: 129px;
            font-size: x-large;
        }
        .style14
        {
            width: 129px;
            height: 22px;
            font-size: x-large;
        }
        .style15
        {
            width: 465px;
            font-size: x-large;
        }
        .style16
        {
            width: 465px;
            height: 22px;
            font-size: x-large;
        }
        .style2
        {
            height: 23px;
            width: 1046px;
        }
    </style>
</head>
<body bgcolor="White" background="../../Content/16.gif" style="height: 252px">
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend class="style6" style="text-align: center">Ingrese datos del Curso</legend>
            

            <div class="style7" style="color:White; text-align:left">
              
                <%: Html.LabelFor(model => model.Descripcion) %>
            </div>


            <div class="style7" style= "text-align: left">
            
                <%: Html.TextBoxFor(model => model.Descripcion) %>
                <%: Html.ValidationMessageFor(model => model.Descripcion) %>
            </div> 
            
            
            <div class="style7" style="color:White; text-align:left">
                <%: Html.LabelFor(model => model.IdEmpleado) %>
            </div>
            

            <div class="style7" style= "text-align: left">

                <%: Html.TextBoxFor(model => model.IdEmpleado) %>
                <%: Html.ValidationMessageFor(model => model.IdEmpleado) %>
            </div>
            
            
            <p>
                <input type="submit" value="Crear" style="height: 28px; width: 77px"  />
            </p>
        </fieldset>

    <% } %>

    <div style="background: white" class ="style7" >
        <%: Html.ActionLink("Regresar a la lista", "Index") %>
    </div>

</body>
</html>

