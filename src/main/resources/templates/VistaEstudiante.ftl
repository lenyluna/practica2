<!DOCTYPE html>
<html>
<head>
    <title>${titulo}</title>
</head>
<body>
<h1>Estudiante:</h1>
<table>
    <tr><td><b>Matr&iacutecula:</b></td><td>${estudiante.matricula?string["0"]}</td></tr>
    <tr><td><b>Nombre:</b></td><td>${estudiante.nombre}</td></tr>
    <tr><td><b>Apellido:</b></td><td>${estudiante.apellido}</td></tr>
    <tr><td><b>Tel&eacutefono:</b></td><td>${estudiante.telefono}</td></tr>
</table>
<br/>
<p align="center">
    <a href="/estudiante/${estudiante.matricula?string["0"]}/modificar/"> <button name="Edit" type="submit" >Edit</button></a>
    <a href="/estudiante/${estudiante.matricula?string["0"]}/eliminar/"> <button name="Remove" type="submit">Remove</button></a>
    <a href="/inicio/"> <button name="Cancelar" type="submit"  >Cancelar</button></a>
</p>
</body>
</html>