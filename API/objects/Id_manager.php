<?php
include_once '../config/database.php';
class Database{
    // specify your own database credentials
    private $id_name = "localhost";
    private $id = "class_room";

    // get the database connection
    public function getCLassID(){
        $database = new Database();
        $db = $database->getConnection();

 
        return $this->conn;
    }
}
?>