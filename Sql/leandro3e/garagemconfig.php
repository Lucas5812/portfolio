<?php
//configuração do banco de dados
$db_host = "localhost";
$db_user = "root";
$db_pass = "";

$db_name = "garagem";

//configuração de conexão com o banco
$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

if ($conn -> connect_error){
    die("Conexão falhou: {$conn->connect_error}");    
}
else{
    echo("Conexão bem sucedida");
}
