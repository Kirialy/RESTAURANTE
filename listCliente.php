<div class="container-fluid px-4">
    <h1 class="mt-4">Clientes</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item active">Listar Clientes</li>
    </ol>
    <div class="row">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCreateCliente">CREAR CLIENTE</button>
    </div>
    <div class="row">
        <table id="dt_cliente" class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO</th>
                    <th>DIRECCIÓN</th>
                    <th>TELÉFONO</th>
                    <th>CORREO</th>
                    <th>FECHA DE REGISTRO</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
</div>
<script type="text/javascript" src="../View/Cliente/cliente.js"></script>
<?php
include_once '../View/Cliente/ModalsCliente.php';
$objmodalsCliente = new ModalsCliente();
$objmodalsCliente->modalCreate();
$objmodalsCliente->modalEdit(); // Necesitarás crear este modal
?>