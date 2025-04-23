$(document).ready(function() {
    listCiudad();
});

var listCiudad = function() {
    var table = $('#dt_pqrs').DataTable({      
          destroy: true,
          responsive: true,
          searching: false,
          orderable: false,
          lengthChange: false,
          pageLength: 15,
          autoWidth: true,          
        "ajax": {
            "url": "ajax.php?module=Pqrs&controller=Pqrs&function=data",
            "method": "post"
        },
        "deferRender": true,
       
        "columns": [
            { "data": "id" },
            { "data": "description" },
            { "data": "codeSecondary" },                  
            { "data": "status" },
            { "data": "buttons" }
        ]
    });    
}