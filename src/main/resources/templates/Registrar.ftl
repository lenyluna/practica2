<!DOCTYPE html>
<html>
<head>
    <title>${titulo}</title>
</head>
<body>
<h1> Registrar Estudiantes </h1>
    <form action="/registrarEstudiante" method="post">
        <fieldset>
        <legend>Informaciones Personales</legend>
        <table>
            <tr><td align="right"><b>Matricula:</b></td><td><input type="text" name="matricula"/></td></tr>
            <tr><td align="right"><b>Nombre:</b></td><td><input type="text" name="nombre"/></td></tr>
            <tr><td align="right"><b>Apellido:</b></td><td><input type="text" name="apellido"/></td></tr>
            <tr><td align="right"><b>Telefono:</b></td><td> <input type="text" name="telefono" /></td></tr>
        </table>
        </fieldset>
        <br/>
        <p align="center">
        <button name="Registar" type="submit" >Registrar</button>
        <button name="Limpiar" type="reset">Limpiar</button>
            <a href="/inicio/"> <button name="Cancelar" type="button"  >Cancelar</button></a>
        </p>
    </form>
</body>
</html>