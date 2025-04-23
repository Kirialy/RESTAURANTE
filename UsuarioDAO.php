<?php
include_once '../lib/config/conexionSqli.php';
 
class UsuarioDAO extends Connection {
    private static $instance = NULL;
    public static function getInstance(){
        if(self::$instance == NULL)
            self::$instance = new UsuarioDAO();
        return self::$instance;
    }
    public function getAll(){
        $sql = "SELECT * FROM usuario";
        $result = $this->execute($sql);
        return $result;
    }
    public function add($id, $name, $lastname, $address, $phone, $correo, $perfId, $login, $password, $status){
        $rs="";
        try {
            $sql = "insert into usuario(usu_id,usu_nombre,usu_apellido,usu_direccion,usu_telefono,usu_correo,perf_id,usu_login,usu_pass,usu_estado) values ('".$id."','".$name."','".$lastname."','".$address."','".$phone."','".$mail."','".$perfId."','".$login."','".$password."','".$status."')";
            $result = $this->execute($sql);
            $rs=1;
        }catch (PDOException $exc) {
            die('Error Add() UsuarioDAO:<br/>' . $exc->getMessage());
            $rs=0;
        }
        return $rs;
    }

    public function findById($id){
        try{
            $sql = "SELECT * FROM usuario WHERE usu_id = '$id'";
            $result = $this->execute($sql);
        return $result;
        }catch(PDOException $exc){
            die('Error findById() UsuarioDAO:<br/>' . $exc->getMessage());
            $rs=0;

        }  
    }
}