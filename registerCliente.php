<div class="container-fluid px-4">
    <h1 class="mt-4">Registro de Cliente</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item active">Nuevo Cliente</li>
    </ol>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-7">
                <div class="card shadow-lg border-0 rounded-lg mt-5">
                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Crear Cuenta de Cliente</h3></div>
                    <div class="card-body">
                        <form method="POST" action="<?php echo getUrl('Cliente', 'Cliente', 'saveNewCliente'); ?>">
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <div class="form-floating mb-3 mb-md-0">
                                        <input class="form-control" id="inputFirstName" type="text" placeholder="Ingrese su nombre" name="nameCliente" required />
                                        <label for="inputFirstName">Nombre</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input class="form-control" id="inputLastName" type="text" placeholder="Ingrese su apellido" name="lastCliente" required />
                                        <label for="inputLastName">Apellido</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" id="inputEmail" type="email" placeholder="nombre@ejemplo.com" name="mailCliente" required />
                                <label for="inputEmail">Correo Electrónico</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" id="inputAddress" type="text" placeholder="Ingrese su dirección" name="addressCliente" />
                                <label for="inputAddress">Dirección</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" id="inputPhone" type="tel" placeholder="Ingrese su teléfono" name="phoneCliente" />
                                <label for="inputPhone">Teléfono</label>
                            </div>
                            <div class="mt-4 mb-0">
                                <div class="d-grid"><button type="submit" class="btn btn-primary btn-block">Registrar Cliente</button></div>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center py-3">
                        <div class="small"><a href="<?php echo getUrl('Usuario', 'Usuario', 'read'); ?>">¿Ya eres usuario?</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>