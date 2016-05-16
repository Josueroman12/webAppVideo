$(function () {
     
    
    $("#btMostarForm").click(function () {
        limpiarForm();
    });
    
    $("#ingresar").click(function () {
        ingresar();
    });
    
    $("#btnBuscar").click(function () {
        searchPersonasPorNombre()();
    });
    
    
});

//******************************************************************************
//Se ejecuta cuando la página esta completamente cargada
//******************************************************************************

$(document).ready(function () {
    consultarUsuarios();
});

//******************************************************************************
//******************************************************************************
//metodos para consultas el listado de las personas
//******************************************************************************
//******************************************************************************

function enviar() {
    if (validar()) {
        //Se envia la información por ajax
        $.ajax({
            url: 'UsuarioServlet',
            data: {
                accion: $("agregarUsuario").val(),
                usuario: $("#Uusuario").val(),
                nombre: $("#Unombre").val(),
                apellidos: $("#Uapellidos").val(),
                contrasena: $("#Ucontrasena").val(),
                correo: $("#Ucorreo").val(),
                fechaNac: $("#UfechaNac").data('date'),
                direccion: $("#Udireccion").val(),
                telTrabajo: $("#UtelTrabajo").val(),
                telCelular: $("#UTelCelular").val(),
      
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

            },
            type: 'POST'
        });
    } else {
        mostrarMensaje("alert alert-danger", "Debe digitar los campos del formulario", "Error!");
    }
}

function validar() {
    var validacion = true;

    //Elimina estilo de error en los css
    //notese que es sobre el grupo que contienen el input
    $("#groupUsuario").removeClass("has-error");
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
    if ($("#Uusuario").val() === "") {
        $("#groupUsuario").addClass("has-error");
        validacion = false;
    }
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
    $('#Uusuario').focus();
    $("#Uusurio").removeAttr("readonly"); //elimina el atributo de solo lectura
    
    //se cambia la accion por agregarPersona
    $("#usurioAction").val("agregarUsuario"); 

    //esconde el div del mensaje
    mostrarMensaje("hiddenDiv", "", "");

    //Resetear el formulario
    $('#formUsuario').trigger("reset");
}


function ingresar(){
    if(validaringreso()){
              $.ajax({
            url: 'UsuariosServlet',
            data: {
                accion: "consultarUsuarioByPerfil",
                correo: $("#Ucorreo").val(),
                contraseña: $("#Ucontrasena").val(), 
                
            },
            error: function () { //si existe un error en la respuesta del ajax
                
                mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador (Error del ajax)", "Error!");
            },
            success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
                var respuestaTxt = data.substring(2);
                var tipoRespuesta = data.substring(0, 2);
                if (tipoRespuesta === "C~") {
                    mostrarMensaje("alert alert-success", respuestaTxt, "Correcto!");
                    $("#inicio").modal("hide");
                    consultarPersonas();
                } else {
                    if (tipoRespuesta === "E~") {
                        mostrarMensaje("alert alert-danger", respuestaTxt, "Error!");
                    } else {
                        mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador", "Error!");
                    }
                }

            },
            type: 'POST'
        });
    } else {
        mostrarMensaje("alert alert-danger", "Debe digitar los campos del formulario", "Error!");
    }
    
}





function validaringreso(){
    var validacion = true;

    $("#groupContrasena").removeClass("has-error");
    
    $("#groupCorreo").removeClass("has-error");
    
    if ($("#Ucontrasena").val() === "") {
        $("#groupContrasena").addClass("has-error");
        validacion = false;
    }
    if ($("#Ucorreo").val() === "")  {
        $("#groupCorreo").addClass("has-error");
        validacion = false;
    }

    return validacion;
    
}
