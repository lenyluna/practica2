<!DOCTYPE html>
<html>
<head>
    <title>${titulo}</title>
</head>
<body>
<h1> Registrado con existo </h1>
<table>
    <tr><td><b>Matricula:</b></td><td>${estudiante.matricula?string["0"]}</td></tr>
    <tr><td><b>Nombre:</b></td><td>${estudiante.nombre}</td></tr>
    <tr><td><b>Apellido:</b></td><td>${estudiante.apellido}</td></tr>
    <tr><td><b>Telefono:</b></td><td>${estudiante.telefono}</td></tr>
</table>
<p>
    <a href="/formulario/">  <button name="ok" type="button">Ok</button></a>

</p>
</body>
</html>