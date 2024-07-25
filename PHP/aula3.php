<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aula 3: For e estruturas de repetição</title>
    <style>
        table {border-collapse: collapse}
        td {border: 1px solid blue}
    </style>
</head>
<body>
    <?php
        echo "<h1>Usando repetição simples com 'for'</h1>";
        //como boas práticas de programação, é recomendado sempre usar o "i" em contadores
        //a estrutura de repetição "for" vai repetir o comando dentro das chaves enquanto a variável i for menor ou igual a 10, a cada "ciclo" o valor de i aumenta em um
        //em resumo, "for([valor inicial da variável]; [condição que a variável tem que alcançar];[incremento/decremento da variável a cada ciclo, vale lembrar que "i++" age como a função "i=i+1", mesma coisa aconteceria com i--])"
        for ($i=1; $i<=10; $i++){
            echo "este é o ciclo de número $i<br>";
            //colocando a variável como o mesmo número do contador, fazemos o número printado aumentar conforme os ciclos se completam
        }

        echo "<h1>Usando 'for' com uma tabela</h1>";
        //abrindo a tabela e a linha
        echo "<table><tr>";
        //similar ao código anterior, com a excessão que se inicia e se fecha uma célula no final de cada ciclo
        for ($i=1; $i<=10; $i++){
            echo "<td>$i</td>";
        }
        //fechando a tabela e a 
        echo "</table></tr>";
    ?>
</body>
</html>