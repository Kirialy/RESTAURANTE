<?php
include_once '../lib/config/conexionSqli.php';
 
class PqrsDAO extends Connection {
    private static $instance = NULL;
    public static function getInstance(){
        if(self::$instance == NULL)
            self::$instance = new PqrsDAO();
        return self::$instance;
    }
    public function getAll(){
        $sql = "SELECT * FROM pqrs";
        $result = $this->execute($sql);
        return $result;
    }
}