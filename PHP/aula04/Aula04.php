<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>║Aula04║</title>
    <style>
        table, tr, td {border: 1px solid black;}
    </style>
</head>
<body>
    <?php
    echo "<h1>tabela alternada</h1>";
    echo "<table>";
    for($i=1; $i<=10; $i++){
        if ($i % 2 == 0){
            echo "<tr><td style='background-color:blue'>$i é um número par</td></tr>";
        }
        else{
            echo "<tr><td>$i é um número impar</td></tr>";   
        }
    }
    echo "</table>";
    echo "<h1>Tabela de imagens</h1>";
    echo "<table><tr>";
    for($i=1; $i<=10; $i++){
        if($i == 6){
            echo "</tr>";
        }
        echo "<td><img src='img/$i.png' width='100'</td>";
    }
    echo "</table>"
    ?>
</body>
</html>
