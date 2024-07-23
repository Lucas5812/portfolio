<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aula 2 ▓</title>
</head>
<body>
    <?php
    //Texto em php, queria testar a diferença entre echo e print mas não encontrei, apesar de ter uma teoria
    echo "<H1>Teste de php</H1>";
    print "<H1>Teste de print em php</H1>";


    //variáveis
    $Nome = "Lucas Leandro";
    $Vulgo = "Cara dos emails";
    $Sala = "3ºe";
    echo "<p>$Nome</p>";
    print "vulgo $Vulgo";


    //cálculos aritméticos
    $NumA = 3;
    $NumB = 12;
    echo "<H1>Calculos</H1>";
    echo "<H1>Assuma os valores de A e B como<br>A=3<br>B=12</H1>";
    $NumC = $NumA + $NumB;
    echo "<p>A soma de A e B da $NumC";
    $NumC = $NumB - $NumA;
    echo  "<p>A diferença entre A e B é $NumC";
    $NumC = $NumB / $NumA;
    echo "<p>A divisão de B por A resulta em $NumC";
    $NumC = $NumA * $NumB;
    echo "<p>O produto de A e B dá $NumC";
    $NumC = $NumA ** $NumB;
    echo "<p>A potência de A e B resulta em $NumC"
    ?>
</body>
</html>
