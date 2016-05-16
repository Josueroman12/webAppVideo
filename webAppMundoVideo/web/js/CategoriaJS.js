$(function () {
     //agrega los eventos las capas necesarias
    $("#enviarCategoria").click(function () {
        enviar();
        
    });
    
    $("#cancelarCategoria").click(function () {
        limpiarForm();
        $("#formCategoria").modal("hide");
    });
    
    $("#btMostarForm").click(function () {
        limpiarForm();
    });
    
    $("#btnBuscar").click(function () {
        searchPersonasPorNombre()();
    });
    
    
});

//******************************************************************************
//Se ejecuta cuando la página esta completamente cargada
//******************************************************************************

$(document).ready(function () {
    consultarCategorias();
});

//******************************************************************************
//******************************************************************************
//metodos para consultas el listado de las personas
//******************************************************************************
//******************************************************************************

function consultarCategorias() {
    mostrarModal("myModal", "Espere por favor..", "Consultando la información de personas en la base de datos");
    //Se envia la información por ajax
    $.ajax({
        url: 'CategoriaServlet',
        data: {
            accion: "consultarCategoria"
        },
        error: function () { //si existe un error en la respuesta del ajax
            alert("Se presento un error a la hora de cargar la información de las categorias en la base de datos");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            dibujarTabla(data);
            // se oculta el modal esta funcion se encuentra en el utils.js
            ocultarModal("myModal");

        },
        type: 'POST',
        dataType: "json"
    });
}

function dibujarTabla(dataJson) {
    //limpia la información que tiene la tabla
    $("#tablaCategoria").html(""); 
    
    //muestra el enzabezado de la tabla
    var head = $("<thead />");
    var row = $("<tr />");
    head.append(row);
    $("#tablaCategoria").append(head); 
    row.append($("<th><b>Id</b></th>"));
    row.append($("<th><b>Nombre</b></th>"));
    row.append($("<th><b>Observaciones</b></th>"));
    row.append($("<th><b>Estado</b></th>"));
    row.append($("<th><b>ACCIÓN</th>"));
    
    //carga la tabla con el json devuelto
    for (var i = 0; i < dataJson.length; i++) {
        dibujarFila(dataJson[i]);
    }
}

function dibujarFila(rowData) {
    //Cuando dibuja la tabla en cada boton se le agrega la funcionalidad de cargar o eliminar la informacion
    //de una Categoria
    
    var row = $("<tr />");
    $("#tablaCategoria").append(row); 
    row.append($("<td>" + rowData.Pk_id_categoria + "</td>"));
    row.append($("<td>" + rowData.nombre + "</td>"));
    row.append($("<td>" + rowData.observaciones + "</td>"));
    row.append($("<td>" + rowData.estado + "</td>"));
    row.append($('<td><button type="button" class="btn btn-default btn-xs" aria-label="Left Align" onclick="consultarCategoriaByID('+rowData.Pk_id_categoria+');">'+
                        '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>'+
                    '</button>'+
                    '<button type="button" class="btn btn-default btn-xs" aria-label="Left Align" onclick="eliminarCategoria('+rowData.Pk_id_categoria+');">'+
                        '<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>'+
                    '</button></td>'));
}




function enviar() {
    if (validar()) {
        //Se envia la información por ajax
        $.ajax({
            type: 'POST',
            url: 'CategoriaServlet',
            data: {
                accion: $("#categoriaAction").val(),
                nombre: $("#Cnombre").val(),
                observaciones: $("#Cobservaciones").val(),
                estado: $("#Cestado").val()
      
            },
            error: function () { //si existe un error en la respuesta del ajax
                
                mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador (Error del ajax)", "Error!");
            },
            success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
                var respuestaTxt = data.substring(2);
                var tipoRespuesta = data.substring(0, 2);
                if (tipoRespuesta === "C~") {
                    mostrarMensaje("alert alert-success", respuestaTxt, "Correcto!");
                    $("#formCategoria").modal("hide");
                    consultarPersonas();
                } else {
                    if (tipoRespuesta === "E~") {
                        mostrarMensaje("alert alert-danger", respuestaTxt, "Error!");
                    } else {
                        mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador", "Error!");
                    }
                }

            }
        });
    } else {
        mostrarMensaje("alert alert-danger", "Debe digitar los campos del formulario", "Error!");
    }
}

function validar() {
    var validacion = true;

    //Elimina estilo de error en los css
    //notese que es sobre el grupo que contienen el input
    $("#groupNombreC").removeClass("has-error");
    $("#groupObservaciones").removeClass("has-error");
    $("#groupEstado").removeClass("has-error");
  
    //valida cada uno de los campos del formulario
    //Nota: Solo si fueron digitados
    if ($("#Cnombre").val() === "") {
        $("#groupNombreC").addClass("has-error");
        validacion = false;
    }
    if ($("#Cobservaciones").val() === "") {
        $("#groupObservaciones").addClass("has-error");
        validacion = false;
    }
    if ($("#Cestado").val() === "") {
        $("#groupEstado").addClass("has-error");
        validacion = false;
    }
    return validacion;
}



//******************************************************************************
//******************************************************************************


function eliminarCategoria(idCategoria) {
    mostrarModalEliminar("myModalEliminar", "Espere por favor..", "Se esta eliminando a la persona seleccionada");
    //Se envia la información por ajax
    $("#eliminar").click(function () {
        $.ajax({
            url: 'CategoriaServlet',
            data: {
                accion: "eliminarCategoria",
                idCategoria: idCategoria
            },
            error: function () { //si existe un error en la respuesta del ajax
                cambiarMensajeModal("myModal","Resultado acción","Se presento un error, contactar al administador");
            },
            success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
                // se cambia el mensaje del modal por la respuesta del ajax
                
                setTimeout("consultarCategoria", 3000);// hace una pausa y consulta la información de la base de datos
            },
            type: 'POST',
            dataType: "text"
        });
    });
}

function consultarCategoriaByID(idCategoria) {
    mostrarModal("myModal", "Espere por favor..", "Consultando la persona seleccionada");
    //Se envia la información por ajax
    $.ajax({
        url: 'CategoriaServlet',
        data: {
            accion: "consultarCategoriaByID",
            idPersona: idCategoria
        },
        error: function () { //si existe un error en la respuesta del ajax
            cambiarMensajeModal("myModal","Resultado acción","Se presento un error, contactar al administador");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            // se oculta el mensaje de espera
            ocultarModal("myModal");
            limpiarForm();
            //se muestra el formulario
            $("#formCategoria").modal();
            
            //************************************************************************
            //carga información de la persona en el formulario
            //************************************************************************
//            //se indicar que la cédula es solo readOnly
//            $("#cedula").attr('readonly', 'readonly');
//            
//            //se modificar el hidden que indicar el tipo de accion que se esta realizando
            $("#categoriaAction").val("modificarCategoria"); 
            
            //se carga la información en el formulario
            $("#nombre").val(data.nombre);
            $("#observaciones").val(data.observaciones);
            $("#estado").val(data.estado);
        },
        type: 'POST',
        dataType: "json"
    });
}


//******************************************************************************
//******************************************************************************




function mostrarMensaje(classCss, msg, neg) {
    //se le eliminan los estilos al mensaje
    $("#mesajeResult").removeClass();

    //se setean los estilos
    $("#mesajeResult").addClass(classCss);

    //se muestra la capa del mensaje con los parametros del metodo
    $("#mesajeResult").fadeIn("slow");
    $("#mesajeResultNeg").html(neg);
    $("#mesajeResultText").html(msg);
    $("#mesajeResultText").html(msg);
}

//******************************************************************************
//******************************************************************************

function limpiarForm() {
    //setea el focus del formulario
    $('#Ucorreo').focus();
    $("#Ucorreo").removeAttr("readonly"); //elimina el atributo de solo lectura
    
    //se cambia la accion por agregarPersona
    $("#usuarioAction").val("agregarUsuario"); 

    //esconde el div del mensaje
    mostrarMensaje("hiddenDiv", "", "");

    //Resetear el formulario
    $('#formUsuario').trigger("reset");
}



