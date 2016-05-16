$(function () {
     //agrega los eventos las capas necesarias
    $("#enviar").click(function () {
        enviar();
        
    });
    
    $("#cancelar").click(function () {
        limpiarForm();
        $("#myModalFormulario").modal("hide");
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
    enviar();
});

//******************************************************************************
//******************************************************************************
//metodos para consultas el listado de las personas
//******************************************************************************
//******************************************************************************


function consultarPersonas() {
    mostrarModal("myModal", "Espere por favor..", "Consultando la información de personas en la base de datos");
    //Se envia la información por ajax
    $.ajax({
        url: 'UsuarioServlet',
        data: {
            accion: "consultarPersonas"
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
    $("#tablaPersonas").html(""); 
    
    //muestra el enzabezado de la tabla
    var head = $("<thead />");
    var row = $("<tr />");
    head.append(row);
    $("#tablaPersonas").append(head); 
    row.append($("<th><b>CEDULA</b></th>"));
    row.append($("<th><b>NOMBRE</b></th>"));
    row.append($("<th><b>PRIMER APELLIDO</b></th>"));
    row.append($("<th><b>SEGUNDO APELLIDO</b></th>"));
    row.append($("<th><b>FEC. NAC.</b></th>"));
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
    $("#tablaPersonas").append(row); 
    row.append($("<td>" + rowData.pkCedula + "</td>"));
    row.append($("<td>" + rowData.nombre + "</td>"));
    row.append($("<td>" + rowData.apellido1 + "</td>"));
    row.append($("<td>" + rowData.apellido2 + "</td>"));
    row.append($("<td>" + rowData.fecNacimiento + "</td>"));
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
            url: 'UsuarioServlet',
            data: {
                accion: $("#usuarioAction").val(),
                nombre: $("#Unombre").val(),
                apellidos: $("#Uapellidos").val(),
                contrasena: $("#Ucontrasena").val(),
                correo: $("#Ucorreo").val(),
                fechaNac: $("#UfechaNac").val(),
                direccion: $("#Udireccion").val(),
                telTrabajo: $("#UtelTrabajo").val(),
                telCelular: $("#UTelCelular").val()
      
            },
            error: function () { //si existe un error en la respuesta del ajax
                
                mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador (Error del ajax)", "Error!");
            },
            success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
                var respuestaTxt = data.substring(2);
                var tipoRespuesta = data.substring(0, 2);
                if (tipoRespuesta === "C~") {
                    mostrarMensaje("alert alert-success", respuestaTxt, "Correcto!");
                    $("#myModalFormulario").modal("hide");
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
    $("#groupNombre").removeClass("has-error");
    $("#groupApellidos").removeClass("has-error");
    $("#groupContrasena").removeClass("has-error");
    $("#groupCorreo").removeClass("has-error");
    $("#groupFechaNacimiento").removeClass("has-error");
    $("#groupDireccion").removeClass("has-error");
    $("#groupTelTrabajo").removeClass("has-error");
    $("#groupTelCelular").removeClass("has-error");

    //valida cada uno de los campos del formulario
    //Nota: Solo si fueron digitados
    if ($("#Unombre").val() === "") {
        $("#groupNombre").addClass("has-error");
        validacion = false;
    }
    if ($("#Uapellidos").val() === "") {
        $("#groupApellidos").addClass("has-error");
        validacion = false;
    }
    if ($("#Ucontrasena").val() === "") {
        $("#groupContrasena").addClass("has-error");
        validacion = false;
    }
    if ($("#Ucorreo").val() === "")  {
        $("#groupCorreo").addClass("has-error");
        validacion = false;
    }
    if ($("#UfechaNac").data('date') === "") {
        $("#groupFechaNacimiento").addClass("has-error");
        validacion = false;
    }
    if ($("#Udireccion").val() === "") {
        $("#groupDireccion").addClass("has-error");
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
            url: 'PersonasServlet',
            data: {
                accion: "eliminarPersonas",
                idPersona: idPersona
            },
            error: function () { //si existe un error en la respuesta del ajax
                cambiarMensajeModal("myModal","Resultado acción","Se presento un error, contactar al administador");
            },
            success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
                // se cambia el mensaje del modal por la respuesta del ajax
                
                setTimeout(consultarPersonas, 3000);// hace una pausa y consulta la información de la base de datos
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
        url: 'PersonasServlet',
        data: {
            accion: "consultarPersonasByID",
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
            $("#cedula").attr('readonly', 'readonly');
            
            //se modificar el hidden que indicar el tipo de accion que se esta realizando
            $("#personasAction").val("modificarPersona"); 
            
            //se carga la información en el formulario
            $("#cedula").val(data.pkCedula);
            $("#nombre").val(data.nombre);
            $("#apellido1").val(data.apellido1);
            $("#apellido2").val(data.apellido2);
            
            //carga de fecha
            var fecha = new Date(data.fecNacimiento);
            
            
            var fechatxt = fecha.getDate() +"/" +fecha.getMonth()+1 + "/" + fecha.getFullYear();
            $("#dpFechaNacimiento").data({date: fechatxt});
            $("#dpFechaNacimientoText").val(fechatxt);
            
            //$("#dpFechaNacimiento")$('.datepicker').datepicker('update', new Date(2011, 2, 5));
            $("#sexo").val(data.sexo);
            $("#observaciones").val(data.observaciones);
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

