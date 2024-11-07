<?php
include "garagemconfig.php";

if(!$conn){
    die ("erro na conexão". mysqli.connect.error());
}


$Nome = "$_POST[Nome]";

$Preco = "$_POST[Preco]";

$Qnt = "$_POST[Qnt]";

$Origem = "$_POST[Origem]";


if($Origem == "Armazem"){
    $Origem = 1;
}
elseif($Origem == "Cozinha"){
    $Origem = 2;
}
elseif($Origem == "Van"){
    $Origem = 3;
}



$sql = "INSERT INTO `produtos`
(`Id_origem`, `Nome`, `Quantidade`, `Preco`)
VALUES 
('$Origem', '$Nome', '$Qnt', '$Preco')";



$query = mysqli_query(mysql: $conn,query: $sql) or die(mysqli_error(mysql: $conn)); 

if($query){
    echo "<center>";
    echo "Cadastro realizado com sucesso";
}