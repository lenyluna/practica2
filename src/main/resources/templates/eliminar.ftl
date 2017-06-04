<!DOCTYPE html>
<html>
<head>
    <title>${titulo}</title>
</head>
<body>

<p>Esta seguro que desea eliminar el estudiante con la Matricula: <b> ${estudiante.matricula?string["0"]} </b> y Nombre <b>${estudiante.nombre}</b></p> <br/>
<p align="center">
    <a href="/estudiante/${estudiante.matricula?string["0"]}/eliminar/elimando"> <button name="Si" type="submit" >S&iacute</button></a>
    <a href="/vista/${estudiante.matricula?string["0"]}"><button name="Cancelar" type="reset"  >Cancelar</button></a>
</p>
</body>
</html>