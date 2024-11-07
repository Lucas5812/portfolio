<?php
include "garagemconfig.php";

if(!$conn){
    die("Erro na conexão".mysqli_connect_error());
}

$Nome = "$_POST[Nome]";

$CPF = "$_POST[CPF]";

$Rg = "$_POST[RG]";

$Email = "$_POST[Email]";

$Tel = "$_POST[Tel]";

$Data = "$_POST[Data_nasc]";

$Num = "$_POST[Num_cart]";

$Senha = "$_POST[Senha_cart]";

$hora = "$_POST[Hora_vazio]";

$CEP = "$_POST[CEP]";


$sql = "INSERT INTO `Clientes`
(`Id_cliente`,`Nome`,`Data_nascimento`,`CEP`,`CPF`,`RG`,`E_mail`,`Telefone`,`Horario_vazio`,`Num_cartao`, `Senha_cartao`)
VALUES
('', '$Nome', '$Data', '$CEP', '$CPF', '$Rg', '$Email', '$Tel', '$hora', '$Num', '$Senha')";

$query = mysqli_query(mysql: $conn,query: $sql) or die(mysqli_error(mysql: $conn)); 

if($query){
    echo "<center>";
    echo "Cadastro realizado com sucesso";
}
