// Al sumar o restar una cantidad se mete en la funcion los parametros talla y el id del producto 
// y se actualiza directamente en el carrito
// Devolver el precio total con la cantidad hacer en el con js


function sumar(id, talla) {
    $('#cantidad').val(Number($('#cantidad').val()) + 1).change();
    var cantidad = $('#cantidad').val(Number($('#cantidad').val()) + 1);
    actualizar_carrito(id, talla, cantidad, actualizar);
}

function menos() {
    if (document.getElementById('cantidad').value > 1) {
        $('#cantidad').val(Number($('#cantidad').val()) - 1).change();
        var cantidad = $('#cantidad').val(Number($('#cantidad').val()) - 1);
        actualizar_carrito(id, talla, cantidad, actualizar);
    }
}

function actualizar_carrito(id, talla, cantidad, operacion) {
    var peticion = $.ajax({
        url: "actualizar_carrito.php",
        type: "POST",
        async: false,
        data: {
            id: id,
            talla: talla,
            cantidad: cantidad,
            operacion: operacion
        },
        success: function (data) {
            //NO DEVUELVE NADA, LO ACTUALIZA DIRECTAMENTE CON EL CLIENTE
            //ESTO ES SOLO PARA ALMACENARLO EN LA VARIABLE DE SESION
        }
    })
}
//Me viene bien para cuando se da a la X se vaya el producto
// document.getElementById("update_cart").addEventListener("click", actualizar_carrito);