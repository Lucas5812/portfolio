<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário php - Soma</title>
</head>
<body>
    <form action="calcular.php" method="post">
    <label for="n1">Valor 1:</label> <br>
    <input type="text" name="n1" value="<?php echo (isset($_GET["n1"])?$_GET["n1"]:"");?>"><br>

    <label for="n2">Valor 2:</label> <br>
    <input type="text" name="n2" value="<?php echo (isset($_GET["n2"])?$_GET["n2"]:"");?>"><br>
    <input type="Submit" value="Somar" style="cursor: pointer;"><br>
    
    Resultado: <input type="text" width="5" value="<?php echo (isset($_GET["res"])?$_GET["res"]:"");?>"><br>  
    </form>
</body>
</html>
