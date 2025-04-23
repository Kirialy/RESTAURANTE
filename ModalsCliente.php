<?php
class ModalsCliente{
    public static function modalCreate(){
        ?>
        <div class="modal" tabindex="-1"  id="modalCreateCliente">
          <div class="modal-dialog modal-xs">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">Registro de Cliente</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <form name="frmCreateCliente" action="<?php echo getUrl('Cliente','Cliente','saveNewCliente');?>" method="post">
                    <div class="mb-3">
                        <label for="nameCliente" class="from-label">Nombre</label><br>
                        <input type="text" name="nameCliente" id="nameCliente" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="lastCliente" class="from-label">Apellido</label><br>
                        <input type="text" name="lastCliente" id="lastCliente" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="addressCliente" class="from-label">Dirección</label><br>
                        <input type="text" name="addressCliente" id="addressCliente" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="phoneCliente" class="from-label">Teléfono</label><br>
                        <input type="text" name="phoneCliente" id="phoneCliente" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="mailCliente" class="from-label">Correo</label><br>
                        <input type="email" name="mailCliente" id="mailCliente" class="form-control" require>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Agregar Cliente</button>
                  </div>
                </form>
            </div>
          </div>
        </div>
        <?php
    }

    public static function modalEdit(){
        ?>
        <div class="modal" tabindex="-1" id="modalEditCliente">
          <div class="modal-dialog modal-xs">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">Editar Cliente</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <form name="frmEditCliente" action="<?php echo getUrl('Cliente','Cliente','postEdit');?>" method="post">
                    <input type="hidden" name="editIdCliente" id="editIdCliente">
                    <div class="mb-3">
                        <label for="editNameCliente" class="from-label">Nombre</label><br>
                        <input type="text" name="editNameCliente" id="editNameCliente" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="editLastCliente" class="from-label">Apellido</label><br>
                        <input type="text" name="editLastCliente" id="editLastCliente" class="form-control" require>
                    </div>
                    <div class="mb-3">
                        <label for="editAddressCliente" class="from-label">Dirección</label><br>
                        <input type="text" name="editAddressCliente" id="editAddressCliente" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="editPhoneCliente" class="from-label">Teléfono</label><br>
                        <input type="text" name="editPhoneCliente" id="editPhoneCliente" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="editMailCliente" class="from-label">Correo</label><br>
                        <input type="email" name="editMailCliente" id="editMailCliente" class="form-control" require>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                  </div>
                </form>
            </div>
          </div>
        </div>
        <?php
    }
}