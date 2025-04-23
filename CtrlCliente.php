<?php
include_once '../DAO/Cliente/ClienteDAO.php';

class CtrlCliente extends ClienteDAO {

    public function read(){
        include_once '../View/Cliente/listado_clientes.php'; // Cambia aquí
    }

    public function register(){
        include_once '../View/Cliente/registerCliente.php';
    }

    public function saveNewCliente(){
        $name = $_POST['nameCliente'];
        $lastname = $_POST['lastCliente'];
        $address = $_POST['addressCliente'];
        $phone = $_POST['phoneCliente'];
        $correo = $_POST['mailCliente'];

        $rs = ClienteDAO::getInstance()->addCliente($name, $lastname, $address, $phone, $correo);

        if($rs == 1){
            messageSweetAlert('Éxito', 'Cliente registrado correctamente.', 'success', '#5cb85c', getUrl('Cliente', 'Cliente', 'read'));
        } else {
            messageSweetAlert('Error', 'No se pudo registrar el cliente.', 'error', '#d9534f', getUrl('Cliente', 'Cliente', 'register'));
        }
    }

    public function data(){
        $listCliente = [];
        $array = [];
        $listCliente = $this->getAllClientes();
        foreach($listCliente as $key => $rowCliente){
            $array['data'][$key]['id'] = $rowCliente['cli_id'];
            $array['data'][$key]['name'] = $rowCliente['cli_nombre'];
            $array['data'][$key]['lastname'] = $rowCliente['cli_apellido'];
            $array['data'][$key]['address'] = $rowCliente['cli_direccion'];
            $array['data'][$key]['phone'] = $rowCliente['cli_telefono'];
            $array['data'][$key]['mail'] = $rowCliente['cli_correo'];
            $array['data'][$key]['fecha_registro'] = $rowCliente['cli_fecha_registro'];
            $array['data'][$key]['buttons'] = '<ul class="icons-list">
                                                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu9"></i></a>
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a data-popup="tooltip" data-placement="top" data-original-title="Editar" class="btnShowEdit" data-toggle="modal" data-target="#modalEditCliente" data-url="' . getUrl('Cliente', 'Cliente', 'getData', array('idCliente' => $rowCliente['cli_id']), 'ajax'). '" role="button"><i class="icon-pencil5 text-primary-700"></i></a></li>
                                                        <li><a data-popup="tooltip" data-placement="top" data-original-title="Eliminar" id="btnDeleteCliente" data-url="' . getUrl('Cliente', 'Cliente', 'delete', array('idCliente' => $rowCliente['cli_id'] ), 'ajax') . '" role="button"><i class="icon-trash text-danger-700"></i></a></li>
                                                    </ul>
                                                </li>
                                            </ul>';
        }
        echo json_encode($array);
    }

    public function getData(){
        $id = $_GET['idCliente'];
        $rs = ClienteDAO::getInstance()->findClienteById($id);
        echo json_encode($rs);
    }

    public function postEdit(){
        $id = $_POST['editIdCliente'];
        $name = $_POST['editNameCliente'];
        $lastname = $_POST['editLastCliente'];
        $address = $_POST['editAddressCliente'];
        $phone = $_POST['editPhoneCliente'];
        $correo = $_POST['editMailCliente'];

        $rs = ClienteDAO::getInstance()->updateCliente($id, $name, $lastname, $address, $phone, $correo);

        if($rs == 1){
            messageSweetAlert('Éxito', 'Cliente actualizado correctamente.', 'success', '#5cb85c', getUrl('Cliente', 'Cliente', 'read'));
        } else {
            messageSweetAlert('Error', 'No se pudo actualizar el cliente.', 'error', '#d9534f', getUrl('Cliente', 'Cliente', 'read'));
        }
    }

    public function delete(){
        $id = $_GET['idCliente'];
        $rs = ClienteDAO::getInstance()->deleteCliente($id);

        if($rs == 1){
            $response = array('success' => true, 'message' => 'Cliente eliminado correctamente.');
        } else {
            $response = array('success' => false, 'message' => 'No se pudo eliminar el cliente.');
        }
        echo json_encode($response);
    }
}