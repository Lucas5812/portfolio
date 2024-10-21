<?php
// Configuração de Banco de Dados
$db_host = "localhost";
$db_user = "root";
$db_pass = "";

$db_name = "biblioteca";

// Conexão com o Banco de Dados
$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

if ($conn->connect_error){
    die("Conexão falhou: {$conn->connect_error} ");

}

else{
    echo "CARAMBA!!!!, você conseguiu conectar a um banco de dados";


}
