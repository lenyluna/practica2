<!DOCTYPE html>
<html>
<head>
    <title>${titulo}</title>
</head>
<body>
<h1> Listado de Estudiantes </h1>
<p>
    Cantidad de estudiantes: ${listEst?size}
    <table border="1px">
         <tr><th>Matricula</th><th>Nombre</th><th>Apellido</th><th>Telefono</th></tr>
         <#list listEst as estudiante>
             <tr><td> <a href="/vista/${estudiante.matricula?string["0"]}" style="text-decoration:none ; color: black" >${estudiante.matricula?string["0"]}</td><td><a href="/vista/${estudiante.matricula?string["0"]}" style="text-decoration:none ; color: black" >${estudiante.nombre}</a></td><td><a href="/vista/${estudiante.matricula?string["0"]}" style="text-decoration:none ; color: black" >${estudiante.apellido}</a></td><td><a href="/vista/${estudiante.matricula?string["0"]}" style="text-decoration:none ; color: black" >${estudiante.telefono}</a></td></tr>
         </#list>

    </table>
    <table>
        <tr><td><a href="/formulario/">+ Add</a></td></tr>
    </table>
</p>
<p>
  <b>  *Si desea ver cualquier estudiante dar click arriba* </b>
</p>
</body>
</html>