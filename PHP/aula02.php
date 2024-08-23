<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Olá</title>
    <style>
        p {
            color: red
        }
    </style>
</head>
<body>
    <h1>Primeiro código PHP</h1>
    <?php
        echo "Olá, mundo!";

        echo "<h1>Poggers</h1>";
        echo "oieeeeeeeeeeeee<br>";

        //echo - imprime uma string na tela;
        //print - Imprime uma string na tela;

        //Variáveis em PHP:
        //Sempre começam com $ seguido do nome da variável;
        //Não é preciso identificar o tipo do dado;
        //Pra criar uma variável basta atribuir um valor a ela;

        $nome = "Feliks";
        $idade = "17";
        $altura = "1.82";
        echo "<p>$nome tem $idade e $altura m</p>";

        $a = 26;
        $b = 13;
        $c = $a + $b;
        echo "A soma de $a e $b é $c<br>";

        $c = $a - $b;
        echo "A subtração de $a e $b é $c<br>";

        $c - $a * $b;
        echo "A multiplicação de $a e $b é $c<br>";

        $c = $a / $b;
        echo "A divisão de $a e $b é $c<br>";

        $c = $a % $b;
        echo "O resto da divisão entre $a e $b é $c";

        $c = $a ** $b;
        echo "$a elevado a $b é $c";
    ?>
</body>
</html>
