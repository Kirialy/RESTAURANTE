<?php
include_once '../lib/config/conexionSqli.php';

class ClienteDAO extends Connection {
    private static $instance = NULL;

    public static function getInstance(){
        if(self::$instance == NULL)
            self::$instance = new ClienteDAO();
        return self::$instance;
    }

    public function getAllClientes(){
        $sql = "SELECT * FROM cliente";
        $result = $this->execute($sql);
        return $result;
    }

    public function addCliente($name, $lastname, $address, $phone, $correo) {
        // ... (tu código actual de addCliente) ...
    }

    public function findClienteById($id){
        // ... (tu código actual de findClienteById) ...
    }

    public function updateCliente($id, $name, $lastname, $address, $phone, $correo) {
        $rs="";
        try {
            $sql = "UPDATE cliente SET cli_nombre = ?, cli_apellido = ?, cli_direccion = ?, cli_telefono = ?, cli_correo = ? WHERE cli_id = ?";
            $stmt = $this->getConexion()->prepare($sql);
            $stmt->bind_param("sssssi", $name, $lastname, $address, $phone, $correo, $id);
            $result = $stmt->execute();
            $rs = $stmt->affected_rows;
            $stmt->close();
        } catch (Exception $exc) {
            die('Error updateCliente() ClienteDAO:<br/>' . $exc->getMessage());
            $rs = 0;
        } finally {
            $this->closeConexion();
        }
        return $rs;
    }

    public function deleteCliente($id) {
        $rs="";
        try {
            $sql = "DELETE FROM cliente WHERE cli_id = ?";
            $stmt = $this->getConexion()->prepare($sql);
            $stmt->bind_param("i", $id);
            $result = $stmt->execute();
            $rs = $stmt->affected_rows;
            $stmt->close();
        } catch (Exception $exc) {
            die('Error deleteCliente() ClienteDAO:<br/>' . $exc->getMessage());
            $rs = 0;
        } finally {
            $this->closeConexion();
        }
        return $rs;
    }
}