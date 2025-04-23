$(document).ready(function() {
    listClientes();
});

var listClientes = function() {
    var table = $('#dt_cliente').DataTable({
        destroy: true,
        responsive: true,
        searching: true, // Puedes cambiar a false si no quieres búsqueda
        orderable: true, // Puedes cambiar a false si no quieres ordenar
        lengthChange: true, // Puedes cambiar a false si no quieres cambiar el número de registros por página
        pageLength: 10, // Ajusta el número de registros por página
        autoWidth: true,
        "ajax": {
            "url": "<?php echo getUrl('Cliente', 'Cliente', 'data', array(), 'ajax'); ?>",
            "method": "post" // Asegúrate de que coincida con lo que espera tu backend
        },
        "deferRender": true,
        "columns": [
            { "data": "id" },
            { "data": "name" },
            { "data": "lastname" },
            { "data": "address" },
            { "data": "phone" },
            { "data": "mail" },
            { "data": null, "render": function(data, type, row) {
                return data.fecha_registro; // Ajusta la clave si es diferente
            }},
            { "data": "buttons" }
        ],
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
        }
    });

    // Aquí puedes agregar el código para los eventos de los botones de editar y eliminar
    $(document).on('click', '.btnShowEdit', function() {
        // ... (tu código para mostrar el modal de edición) ...
    });

    $(document).on('click', '#btnDeleteCliente', function() {
        // ... (tu código para eliminar el cliente) ...
    });
};