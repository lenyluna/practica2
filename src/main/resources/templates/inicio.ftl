<!DOCTYPE html>
<html>
<head>
    <title>${titulo}</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<h1> Listado de Estudiantes </h1>
<p>
    Cantidad de estudiantes: ${listEst?size}
    <table border="1px" class="table table-hover" >
         <tr><th>Matricula</th><th>Nombre</th><th>Apellido</th><th>Telefono</th></tr>
         <#list listEst as estudiante>
             <tr align="center"><td> <a href="/vista/${estudiante.matricula?string["0"]}" style="text-decoration:none ; color: black" >${estudiante.matricula?string["0"]}</td><td><a href="/vista/${estudiante.matricula?string["0"]}" style="text-decoration:none ; color: black" >${estudiante.nombre}</a></td><td><a href="/vista/${estudiante.matricula?string["0"]}" style="text-decoration:none ; color: black" >${estudiante.apellido}</a></td><td><a href="/vista/${estudiante.matricula?string["0"]}" style="text-decoration:none ; color: black" >${estudiante.telefono}</a></td></tr>
         </#list>

    </table>
    <table>
        <tr><td><a href="/formulario/" type="button" class="btn btn-primary">+ Add</a></td></tr>
    </table>
</p>
<p>
  <b>  *Si desea ver cualquier estudiante dar click al estudiante* </b>
</p>
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
    Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>