<?php
include_once '../vendor/autoload.php';

use \Firebase\JWT\JWT;

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and obj
include_once '../config/database.php';
include_once '../objects/user.php';
  
$database = new Database();
$db = $database->getConnection();
  
// initialize object
$user = new User($db);

$email = $_GET['email'];
$password = $_GET['password'];

// query products
$stmt = $user->addUser($email,$password);
$num = $stmt->rowCount();
 
// check if more than 0 record found

if($num ==1){
    echo json_encode(
        array("status"=>"1",
            "message" => "register sucessfully!")
    );
}
else
if (!$stmt->execute()) {
    if ($stmt->errorInfo()[0] == 23000){
        echo json_encode(
            array("status"=>"0",
                "message" => "email has been register, please login")
        );
    };
}
