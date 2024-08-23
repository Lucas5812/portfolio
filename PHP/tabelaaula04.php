<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabela</title>
    <style>
        table {
            border-collapse: collapse;
        }
        td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <?php 
        echo "<h1>Contando de 1 a 10 em php</h1>";
        for ($i = 1; $i <= 10; $i++) {
            echo "<p>$i</p>";
        }

        echo "Tabela em PHP de 1 a 10";
        echo "<table><tr>";
        for ($i = 1; $i <= 10; $i++){
            echo "<td>$i</td>";
        }
        echo "</tr></table>";
    ?>
</body>
</html>
