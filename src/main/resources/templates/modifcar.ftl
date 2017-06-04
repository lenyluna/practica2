<!DOCTYPE html>
<html>
<head>
    <title>${titulo}</title>
</head>
<body>
<h1> Estudiante a modificar </h1>
<form action="/estudiante/${estudiante.matricula?string["0"]}/guardar" method="post">
    <fieldset>
        <legend>Informaciones Personales</legend>
        <table>
           <tr><td align="right"><b>Matricula:</b></td><td><input type="text" name="matricula2" value="${estudiante.matricula?string["0"]}"/></td></tr>
            <tr><td align="right"><b>Nombre:</b></td><td><input type="text" name="nombre" value="${estudiante.nombre}"/></td></tr>
            <tr><td align="right"><b>Apellido:</b></td><td><input type="text" name="apellido" value="${estudiante.apellido}"/></td></tr>
            <tr><td align="right"><b>Telefono:</b></td><td> <input type="text" name="telefono" value="${estudiante.telefono}" /></td></tr>
        </table>
    </fieldset>
    <br/>
    <p align="center">
        <button name="Registar" type="submit" >Save</button>
        <a href="/inicio/"> <button name="Cancelar" type="button"  >Cancelar</button></a>
    </p>
</form>
</body>
</html>