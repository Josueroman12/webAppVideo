$(function () {
     //agrega los eventos las capas necesarias
    $("#enviarPelicula").click(function () {
        enviar();
        
    });
    
    $("#cancelarPelicula").click(function () {
        limpiarForm();
        $("#myModalFormulario").modal("hide");
    });
    
    $("#btMostarForm").click(function () {
        limpiarForm();
    });
    
    $("#btnBuscar").click(function () {
        searchPeliculaPorNombre()();
    });
    
    
});

//******************************************************************************
//Se ejecuta cuando la página esta completamente cargada
//******************************************************************************

$(document).ready(function () {
    consultarPeliculas();
});

//******************************************************************************
//******************************************************************************
//metodos para consultas el listado de las personas
//******************************************************************************
//******************************************************************************


function consultarPeliculas() {
    mostrarModal("myModal", "Espere por favor..", "Consultando la información de personas en la base de datos");
    //Se envia la información por ajax
    $.ajax({
        url: 'PeliculaServlet',
        data: {
            accion: "consultarPeliculas"
        },
        error: function () { //si existe un error en la respuesta del ajax
            alert("Se presento un error a la hora de cargar la información de las personas en la base de datos");
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
    $("#tablaPelicula").html(""); 
    
    //muestra el enzabezado de la tabla
    var head = $("<thead />");
    var row = $("<tr />");
    head.append(row);
    $("#tablaPelicula").append(head); 
    row.append($("<th><b>ID PELICULA</b></th>"));
    row.append($("<th><b>NOMBRE</b></th>"));
    row.append($("<th><b></b>DIRECTOR</th>"));
    row.append($("<th><b>ACTOR PRINCIPAL</b></th>"));
    row.append($("<th><b>ID CATEGORIA</b></th>"));
    row.append($("<th><b>CANT. EXISTENTES</b></th>"));
    row.append($("<th><b>CANT. ALQUILADAS</b></th>"));
    row.append($("<th><b>CANT. VENDIDAS</b></th>"));
    row.append($("<th><b>OBSERVACIONES</b></th>"));
    row.append($("<th><b>ESTADO</b></th>"));
    row.append($("<th><b>COSTO VENTA</b></th>"));
    row.append($("<th><b>COSTO ALQUILER</b></th>"));
    row.append($("<th><b>ACCIÓN</th>"));
    
    //carga la tabla con el json devuelto
    for (var i = 0; i < dataJson.length; i++) {
        dibujarFila(dataJson[i]);
    }
}

function dibujarFila(rowData) {
    //Cuando dibuja la tabla en cada boton se le agrega la funcionalidad de cargar o eliminar la informacion
    //de una persona
    
    var row = $("<tr />");
    $("#tablaPelicula").append(row); 
    row.append($("<td>" + rowData.Pk_id_peliculas + "</td>"));
    row.append($("<td>" + rowData.nombre + "</td>"));
    row.append($("<td>" + rowData.director + "</td>"));
    row.append($("<td>" + rowData.actor_principal + "</td>"));
    row.append($("<td>" + rowData.Fk_id_Categoria + "</td>"));
    row.append($("<td>" + rowData.cant_esxistente + "</td>"));
    row.append($("<td>" + rowData.cant_alquiladas + "</td>"));
    row.append($("<td>" + rowData.cant_vendidas + "</td>"));
    row.append($("<td>" + rowData.observaciones + "</td>"));
    row.append($("<td>" + rowData.estado + "</td>"));
    row.append($("<td>" + rowData.costo_venta + "</td>"));
    row.append($("<td>" + rowData.costo_alquiler+ "</td>"));
    row.append($('<td><button type="button" class="btn btn-default btn-xs" aria-label="Left Align" onclick="consultarPersonaByID('+rowData.pkCedula+');">'+
                        '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>'+
                    '</button>'+
                    '<button type="button" class="btn btn-default btn-xs" aria-label="Left Align" onclick="eliminarPersona('+rowData.pkCedula+');">'+
                        '<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>'+
                    '</button></td>'));
}


function enviar() {
    if (validar()) {
        //Se envia la información por ajax
        $.ajax({
            type: 'POST',
            url: 'PeliculasServlet',
            data: {
                accion: $("#peliculaAction").val(),
                nombre: $("#Pnombre").val(),
                director: $("#Pdirector").val(),
                actorPrincipal: $("#PactorPrincipal").val(),
                categoria: $("#Pcategoria").val(),
                cantExistentes: $("#PcantExistentes").val(),
                costoVenta: $("#PcostoVenta").val(),
                costoAlquiler: $("#PcostoAlquiler").val()
      
            },
            error: function () { //si existe un error en la respuesta del ajax
                
                mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador (Error del ajax)", "Error!");
            },
            success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
                var respuestaTxt = data.substring(2);
                var tipoRespuesta = data.substring(0, 2);
                if (tipoRespuesta === "C~") {
                    mostrarMensaje("alert alert-success", respuestaTxt, "Correcto!");
                    $("#formPelicula").modal("hide");
                    consultarPeliculas();
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
    $("#groupNombrePelicula").removeClass("has-error");
    $("#groupDirector").removeClass("has-error");
    $("#grouActorPrincipal").removeClass("has-error");
    $("#groupCategoria").removeClass("has-error");
    $("#groupCantExistentes").removeClass("has-error");
    $("#groupCostoVenta").removeClass("has-error");
    $("#groupCostoAlquiler").removeClass("has-error");

    //valida cada uno de los campos del formulario
    //Nota: Solo si fueron digitados
    if ($("#Pnombre").val() === "") {
        $("#groupNombrePelicula").addClass("has-error");
        validacion = false;
    }
    if ($("#Pdirector").val() === "") {
        $("#groupDirector").addClass("has-error");
        validacion = false;
    }
    if ($("#PactorPrincipal").val() === "") {
        $("#groupActorPrincipal").addClass("has-error");
        validacion = false;
    }
    if ($("#Pcategoria").val() === "")  {
        $("#groupCategoria").addClass("has-error");
        validacion = false;
    }
    if ($("#PcantExistentes").data('date') === "") {
        $("#groupCantExistentes").addClass("has-error");
        validacion = false;
    }
    if ($("#PcostoVenta").val() === "") {
        $("#groupCostoVenta").addClass("has-error");
        validacion = false;
    }
    if ($("#PcostoAlquiler").val() === "") {
        $("#groupCostoAlquiler").addClass("has-error");
        validacion = false;
    }

    return validacion;
}



//******************************************************************************
//******************************************************************************


function eliminarPersona(idPersona) {
    mostrarModalEliminar("myModalEliminar", "Espere por favor..", "Se esta eliminando a la persona seleccionada");
    //Se envia la información por ajax
    $("#eliminar").click(function () {
        $.ajax({
            url: 'PeliculaServlet',
            data: {
                accion: "eliminarPelicula",
                idPersona: idPersona
            },
            error: function () { //si existe un error en la respuesta del ajax
                cambiarMensajeModal("myModal","Resultado acción","Se presento un error, contactar al administador");
            },
            success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
                // se cambia el mensaje del modal por la respuesta del ajax
                
                setTimeout(consultarPeliculas, 3000);// hace una pausa y consulta la información de la base de datos
            },
            type: 'POST',
            dataType: "text"
        });
    });
}

function consultarPersonaByID(idPersona) {
    mostrarModal("myModal", "Espere por favor..", "Consultando la persona seleccionada");
    //Se envia la información por ajax
    $.ajax({
        url: 'PeliculaServlet',
        data: {
            accion: "consultarPeliculaByID",
            idPersona: idPersona
        },
        error: function () { //si existe un error en la respuesta del ajax
            cambiarMensajeModal("myModal","Resultado acción","Se presento un error, contactar al administador");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            // se oculta el mensaje de espera
            ocultarModal("myModal");
            limpiarForm();
            //se muestra el formulario
            $("#myModalFormulario").modal();
            
            //************************************************************************
            //carga información de la persona en el formulario
            //************************************************************************
            //se indicar que la cédula es solo readOnly
            //$("#cedula").attr('readonly', 'readonly');
            
            //se modificar el hidden que indicar el tipo de accion que se esta realizando
            $("#peliculasAction").val("modificarPelicula"); 
            
            //se carga la información en el formulario
            $("#Pnombre").val(data.nombre);
            $("#Pdirecctor").val(data.director);
            $("#PactorPrincipal").val(data.actorPrincipal);
            $("#Pcategoria").val(data.Fk_id_categoria);
            $("#PcantExistentes").val(data.cantExistentes);
            $("#PcostoVenta").val(data.costoVenta);
            $("#PcostoAlquiler").val(data.costoAlquiler);
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



