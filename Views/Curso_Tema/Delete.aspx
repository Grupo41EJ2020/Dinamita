<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.CursoTema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Delete</title>
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
<body background="../../Content/bgDelete.jpg">
    <h3 class="style8">¿Estas seguro de querer borrar esto?</h3>
    <fieldset>
        <legend class="style3"><span class="style7">Datos Curso Tema</span><br 
                class="style7" />
        </legend>
        
        <div class="style5">IdCT</div>
        <div class="style5"><%: Model.IdCT %></div>
        
        <div class="style5">IdCurso</div>
        <div class="style5"><%: Model.IdCurso %></div>
        
        <div class="style5">IdTema</div>
        <div class="style5"><%: Model.IdTema %></div>
        
    </fieldset>
    <span class="style6">
    <% using (Html.BeginForm()) { %>
        </span>
        <p>
		    <input type="submit" value="Eliminar" class="style2" /><span class="style1"><b><span 
                class="style4"> |&nbsp;&nbsp;&nbsp;
		    <%: Html.ActionLink("Regresar", "Index") %>
            </span></b></span>
        </p>
    <% } %>

</body>
</html>

