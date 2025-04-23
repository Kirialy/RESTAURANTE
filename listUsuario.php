<div class="container-fluid px-4">
    <h1 class="mt-4">Usuario</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item active">Listar</li>
    </ol>
    <div class="row">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCreateUser">CREAR</button>
    </div>
    <div class="row">
            <table id="dt_usuario" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NOMBRE</th>
                            <th>APELLIDO</th>                                                      
                            <th>DIRECCION</th>
                            <th>TELEFONO</th>
                            <th>CORREO</th>
                            <th>ID PERFIL</th>
                            <th>LOGIN</th>
                            <th>PASSWORD</th>
                            <th>ESTADO</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
    </div>
</div>
<script type="text/javascript" src="../View/Usuario/usuario.js"></script>
<?php
include_once '../View/Usuario/ModalsUsuario.php';
$objmodals=new ModalsUsuario();
$objmodals->modalCreate();