<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dados Pessoais</title>
</head>
<body>
    <h1>Informações Pessoais</h1>
    <p><strong>Email:</strong> <?php echo $_POST["email"]?> </p>
    <p><strong>Nome Completo:</strong> <?php echo $_POST["nc"]?> </p>
    <p><strong>Data de Nascimento</strong><?php echo $_POST["dn"]?> </p>
    <p><strong>Sexo:</strong> <?php echo $_POST["sexo"]?> </p>
    <p><strong>Estado Civil:</strong> <?php echo $_POST["ecl"]?> </p>
    <p><strong>Nacionalidade:</strong> <?php echo $_POST["nacionalidade"]?> </p>
    <p><strong>RG:</strong> <?php echo $_POST["rg"]?> </p>
    <p><strong>CPF:</strong> <?php echo $_POST["cpf"]?> </p>
    <p><strong>Logradouro:</strong> <?php echo$_POST["log"]?> </p>
    <p><strong>Número:</strong> <?php echo $_POST["num"]?> </p>
    <p><strong>Complemento:</strong> <?php echo $_POST["comp"]?> </p>
    <p><strong>Bairro:</strong> <?php echo $_POST["bairro"]?> </p>
    <p><strong>Cidade:</strong> <?php echo $_POST["cidade"]?> </p>
    <p><strong>Estado:</strong> <?php echo $_POST["estado"]?> </p>
    <p><strong>CEP:</strong> <?php echo $_POST["cep"]?> </p>
    <p><strong>Telefone:</strong> <?php echo $_POST["telefone"]?> </p>
    <a href="concurso.html">Voltar para o início</a>

</body>
</html>