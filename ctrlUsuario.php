<?php
include_once '../DAO/Usuario/UsuarioDAO.php';
 
class CtrlUsuario extends UsuarioDAO {
 
    public function read(){
        include_once '../View/Usuario/listUsuario.php';
    }
 
    public function data(){
        $listUsuario=[];
        $array=[];
        $listUsuario=$this->getAll();
        foreach($listUsuario as $key => $rowUsuario){          
           
            $array['data'][$key]['id'] = $rowUsuario['usu_id'];
            $array['data'][$key]['name'] = $rowUsuario['usu_nombre'];
            $array['data'][$key]['lastname'] = $rowUsuario['usu_apellido'];
            $array['data'][$key]['address'] = $rowUsuario['usu_direccion'];                  
            $array['data'][$key]['phone'] = $rowUsuario['usu_telefono'];
            $array['data'][$key]['mail'] = $rowUsuario['usu_correo'];
            $array['data'][$key]['perfId'] = $rowUsuario['perf_id'];
            $array['data'][$key]['login'] = $rowUsuario['usu_login'];
            $array['data'][$key]['pass'] = $rowUsuario['usu_pass'];
            $array['data'][$key]['status'] = $rowUsuario['usu_estado'];
            $array['data'][$key]['buttons'] = '<ul class="icons-list">
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu9"></i></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a data-popup="tooltip" data-placement="top" data-original-title="Editar" class="btnShowEdit" data-toggle="modal" data-target="#modal_edit" data-url="' . getUrl('Usuario', 'Usuario', 'getData', array('idUser' => $rowUsuario['usu_id']), 'ajax'). '" role="button"><i class="icon-pencil5 text-primary-700"></i></a></li>
                        <li><a data-popup="tooltip" data-placement="top" data-original-title="Eliminar" id="btnDelete" data-url="' . getUrl('Usuario', 'Usuario', 'getData', array('idUser' => $rowUsuario['usu_id'] ), 'ajax') . '" role="button"><i class="icon-trash text-danger-700"></i></a></li>
                    </ul>
                </li>
            </ul>';   
           
           
        }
        /*
            json_encode($array) => se convierte el arreglo a formato JSON para la libreria data table
        */
        echo json_encode($array);
    }

    public function postNew(){
        $id=$_POST['idUser'];
        $name=$_POST['nameUser'];
        $lastname=$_POST['lastUser'];
        $address=$_POST['addressUser'];
        $phone=$_POST['phoneUser'];
        $correo=$_POST['mailUser'];
        $perfId=$_POST['perfIdUser'];
        $login=$_POST['loginUser'];;
        $password=$_POST['passUser'];
        $status=$_POST['statusUser'];
        $rs=UsuarioDAO::getInstance()->add($id, $name, $lastname, $address, $phone, $correo, $perfId, $login, $password, $status);
        if($rs == 1){
            //Mensaje de registro Exitoso
        }
        else{
           //Mensaje de error
        }
        redirect(getUrl('Usuario','Usuario','read'));
 
    }

    public function getData(){
        $id = $_GET['iduser'];
        $rs = UsuarioDAO::getInstance()->getById($id);
        echo json_encode($rs);
       
    }
 
}