<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Pia Desarrollo de Software</title>
    <style type="text/css">
    html, body
    {
    width: 100%;
    height: 110%; 
    background: #FFFFFF;
    font-family: Century Gothic; 
    }
    a:link, a:visited{
    text-decoration: none;
    padding: 20px;
    font-family: Century Gothic;
    text-transform: uppercase;
    padding-left: 10px;
    padding-right: 10px;
    font-weight: 200;
    font-size: 25px;
    color: black;
    width:250px;
    height:25px;
    text-align:center;
    display: inline-block;
    margin: 20px 20px 0 20px;
    background-color: #c1f4f6;
    }
    a:hover{
    color: #dbe9ea;
    background-color:#dbe9ea;
    text-decoration: none;
    }           
    
    </style>
</head>
<body >
<center>
    <img src="../../Content/logo-facpya.png" />
    </center>
    <h1 style= "text-align:center" class= "style6"> Bienvenidos al Producto Integrador de Aprendizaje del equipo DINAMITA</h1>
    <center>
    <a href="/Empleado/Index">Empleado</a>
    <br />
     <a href="/Tema/Index">Temas</a>
     <br />
     <a href="/Curso/Index">Curso</a>
     <br />
     <a href="/Video/Index">Video</a>
     <br>
      <a href="/Curso_Tema/Index">Curso_Tema</a>
    <br />
     <a href="/Curso_Tema_Video/ConsultarTodo">Curso_Tema_Video</a>
     <br />
     
    </center>
   
  
</body>
</html>
