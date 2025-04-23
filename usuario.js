$(document).ready(function() {
    listUsuario();
});

var listUsuario = function() {
    var table = $('#dt_usuario').DataTable({      
          destroy: true,
          responsive: true,
          searching: true,
          orderable: false,
          lengthChange: false,
          pageLength: 15,
          autoWidth: true,          
        "ajax": {
            "url": "ajax.php?module=Usuario&controller=Usuario&function=data",
            "method": "post"
        },
        "deferRender": true,
       
        "columns": [
            { "data": "id" },
            { "data": "name" },
            { "data": "lastname" },                  
            { "data": "address" },
            { "data": "phone" },
            { "data": "mail" },
            { "data": "perfId" },
            { "data": "login" },                  
            { "data": "pass" },
            { "data": "status" }
        ]
    }); 
    showModalsUser("#dt_usuario tbody", table);      
}

var showModalsUser = function (tbody, table) {
    $(tbody).on("click", ".btnShowEdit", function () {
        var url = $(this).attr("data-url");
      $.ajax({
        url: url,
        dataType: "JSON",
        success: function (rs) {
         console.log(rs);
        },
      });
    });
    $(tbody).on("click", "#btnDelete", function () {
     
    });
  };
