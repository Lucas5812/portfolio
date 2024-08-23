<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>link enviado</title>
</head>
<body>
    <?php

    echo "Olá ", $_GET["nome"], " ", $_GET["sobrenome"], " seja bem-vindo ao sistema! <br>";
    //método GET: é possível enviar parâmetros, com a concatenação:
    //o padrão do GET é: url?par1=valor?
    //esse arquivo não abre diretamente, precisa abrir o html antes, por conta do parâmetro, pra ele ler o parâmetro e abrir o arquivo
?>

    <a href="aula07.html">Voltar pra página Inicial</a>

</body>
</html>
