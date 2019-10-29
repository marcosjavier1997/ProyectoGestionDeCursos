<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Listado de Autoridades</title>
</head>
<body>
<div class="container-fluid">
<div class="margenseparadorlayouttop">
        <div class="centrar mb-3"><h3>Listado de autoridades</h3></div>
        <div class="tabla_nth_child">
        <g:if test="${autoridades}">
        <table>
            <tr>
                <th>Nombre y Apellido</th>
                <th>Dni</th>
                <th>Cargo</th>
                <th>Cursos</th> 
                <th>Firma</th>
                <th>Accion</th>
                <th>Accion</th>

            </tr>
            <g:each in="${autoridades?}" >
            <tr>
                <td>${it.nombre} ${it.apellido}</td>
                <td>${it.dni}</td>
                <td>${it.cargo} </td>
                <td> ${it.cursos.nombre}</td>
                <td><img src=${createLink(controller:"AutoridadCertificante", action:"verImagen", id:"${params.id}")} width='300' /></td>
                    
                <td>
                <g:hiddenField name="id" value="${it.id}" />
                <g:form method="POST" action="asignarCurso"  >
                    <g:hiddenField name="id" value="${it.id}" />
                      <button type="submit" class="btn btn-success">Asignar Curso</button>
                </g:form>
                </td>
                <td>
                    <g:hiddenField name="id" value="${it.id}" />
                    <g:form method="POST" action="quitarCurso" >
                    <g:hiddenField name="id" value="${it.id}" />
                      <button type="submit" class="btn btn-success">Quitar Curso</button>
                    </g:form> 
                </td>
                 
            </tr>     
            </g:each> 
            </table>
        </g:if>
        <g:else>
        <div class="mb-0"><h3>No tiene Autoridades Certificantes cargadas.</h3></div>
         </g:else>
        </div>
    </div>
    </div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  

</body>
</html>