<?php
class ModalsUsuario{
    public static function modalCreate(){
        ?>
        <div class="modal" tabindex="-1"  id="modalCreateUser">
          <div class="modal-dialog modal-xs">
            <div class="modal-content">
              <div class="modal-header">
               
                <h5 class="modal-title">Registro usuario</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <form name="frmCreateUser" action="<?php echo getUrl('Usuario','Usuario','postNew');?>" method="post">
 
                    <div class="mb-3">
                        <label for="codigo" class="from-label">ID</label><br>
                        <input type="number" name="idUser" id="idUser" class="form-control" require><br>
                    </div>
                    <div class="mb-3">
                        <label for="nombre" class="from-label">Nombre</label><br>
                        <input type="text" name="nameUser" id="nameUser" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="Apellido" class="from-label">Apellido</label><br>
                        <input type="text" name="lastUser" id="lastUser" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="Direccion" class="from-label">Direccion</label><br>
                        <input type="text" name="addressUser" id="addressUser" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="Telefono" class="from-label">Telefono</label><br>
                        <input type="text" name="phoneUser" id="phoneUser" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="Correo" class="from-label">Correo</label><br>
                        <input type="text" name="mailUser" id="mailUser" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="PerfilId" class="from-label">Perfil ID</label><br>
                        <input type="text" name="perfIdUser" id="perdIdUser" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="login" class="from-label">Login</label><br>
                        <input type="text" name="loginUser" id="loginUser" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="from-label">Password</label><br>
                        <input type="text" name="passUser" id="passUser" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="status" class="from-label">Estado</label><br>
                        <input type="text" name="statusUser" id="statusUser" class="form-control" require>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Agregar Usuario</button>
                  </div>
                </form>
            </div>
          </div>
        </div>
        <?php
    }  
}