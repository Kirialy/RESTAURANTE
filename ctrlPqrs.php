<?php
include_once '../DAO/Pqrs/PqrsDAO.php';
 
class CtrlPqrs extends PqrsDAO {
 
    public function read(){
        include_once '../View/Pqrs/listPqrs.php';
    }
 
    public function data(){
        $listPqrs=[];
        $array=[];
        $listPqrs=$this->getAll();
        foreach($listPqrs as $key => $rowPqrs){          
           
            $array['data'][$key]['id'] = $rowPqrs['pqrs_id'];          
            $array['data'][$key]['description'] = $rowPqrs['pqrs_fecha'];      
            $array['data'][$key]['codeSecondary'] = $rowPqrs['pqrs_descripcion'];        
            $array['data'][$key]['status'] = $rowPqrs['pqrs_correo'];
            $array['data'][$key]['buttons'] = "";                
           
           
        }
        /*
            json_encode($array) => se convierte el arreglo a formato JSON para la libreria data table
        */
        echo json_encode($array);
    }
 
 
}