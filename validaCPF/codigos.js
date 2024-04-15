   
var cpfseparado = []
var cpfcalculado = []
var valor1 = 0
var valor2 = 0
    
function VerificaCPF(CPF){
    var cpf = document.getElementById("CPF").value;

    document.getElementById("veredicto").innerHTML = "..."
    console.log("Função iniciada")

    if (/^\d+$/.test(cpf) && cpf.length === 11){
            cpfVerificado = cpf
            console.log("CPF verificado") 
            trataCPF1(cpfVerificado)
            aparecesite();
    }

    else {
        document.getElementById("veredicto").innerHTML = "tamanho inválido, um CPF por padrão deve ter 11 digitos"
    }
        
    }

function trataCPF1(cpf){
    for (let i = 0; i <= 10; i++){
       let numseparado = cpf.substring(i, i+1)
        console.log(numseparado)
        cpfseparado[i] = numseparado
        document.getElementById("veredicto").innerHTML = "Seu cpf está sendo analisado, aguarde..."
    }

    console.log("valores do cpf separados")

    for (let i = 0; i <= 8; i++){
        cpfcalculado[i] = cpfseparado[i] * (10 - i)
        console.log(cpfcalculado[i])
    }
    valor1 = cpfcalculado[0] + cpfcalculado[1] + cpfcalculado[2] + cpfcalculado[3] + cpfcalculado[4] + cpfcalculado[5] + cpfcalculado[6] + cpfcalculado[7] + cpfcalculado[8]
    console.log(valor1)
    valor2 = (valor1*10)%11
    console.log(valor2)
    if(valor2 === 10 || valor2 === 11){
       valor2 = 0
       console.log("digito de valor2 alterado para:")
       console.log(valor2)
       console.log(cpfseparado[9])
     }
    document.getElementById("veredicto").innerHTML = "Verificando primeiro digito indentificador..."
     if(valor2 == cpfseparado[9]){
         document.getElementById("veredicto").innerHTML = "primeiro indentificador verificado!"
         trataCPF2()
     }
     else{
            document.getElementById("veredicto").innerHTML = "Cpf Inválidado no primeiro indentificador!"
    }
}
function trataCPF2(){
    console.log("recebeu cpf tratado")
    for (let i = 0; i <= 9; i++){
        cpfcalculado[i] = cpfseparado[i] * (11 - i)
        console.log(cpfcalculado[i])
    }
    valor1 = cpfcalculado[0] + cpfcalculado[1] + cpfcalculado[2] + cpfcalculado[3] + cpfcalculado[4] + cpfcalculado[5] + cpfcalculado[6] + cpfcalculado[7] + cpfcalculado[8] + cpfcalculado[9]
    valor2 = (valor1*10)%11
    if(valor2 === 10 || valor2 === 11){
        valor2 = 0
        console.log("digito de valor2 alterado para:")
        console.log(valor2)
        console.log(cpfseparado[10])
      }
    if(valor2 == cpfseparado[10]){
        document.getElementById("veredicto").innerHTML = "CPF valido!";
    }
    else{
           document.getElementById("veredicto").innerHTML = "Cpf Inválidado no segundo indentificador!"
   }

}

function limpa_formulário_cep() {
    document.getElementById('rua').value=("");
    document.getElementById('bairro').value=("");
    document.getElementById('cidade').value=("");
    document.getElementById('uf').value=("");
    document.getElementById('ibge').value=("");
}

function meu_callback(conteudo) {
if (!("erro" in conteudo)) {
    document.getElementById('rua').value=(conteudo.logradouro);
    document.getElementById('bairro').value=(conteudo.bairro);
    document.getElementById('cidade').value=(conteudo.localidade);
    document.getElementById('uf').value=(conteudo.uf);
    document.getElementById('ibge').value=(conteudo.ibge);
}
else {

    limpa_formulário_cep();
    document.getElementById("cepfailed").innerHTML = "Oops, parece que seu CEP não existe, digite novamente!";
}
}

function pesquisacep(valor) {

var cep = valor.replace(/\D/g, '');
if (cep != "") {
var validacep = /^[0-9]{8}$/;

    if(validacep.test(cep)) {

        document.getElementById('rua').value="...";
        document.getElementById('bairro').value="...";
        document.getElementById('cidade').value="...";
        document.getElementById('uf').value="...";
        document.getElementById('ibge').value="...";

        var script = document.createElement('script');
        script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';
        document.body.appendChild(script);

    } 
    else {
        
        limpa_formulário_cep();
        document.getElementById("cepfailed").innerHTML = "Formato inválido, digite seu CEP novamente.";
    }
}
else {
    limpa_formulário_cep();
}
}

function verificaCampos() {
    var cpf = document.getElementById("CPF").value;
    var cep = document.getElementById("cep").value;

    if (/^\d+$/.test(cpf) && cpf.length === 11 && validarCEP(cep)) {
        document.getElementById("veredicto").innerHTML = "...";
        trataCPF1(cpf);
        pesquisacep(cep);
        aparecesite(); // Chamando a função aparecesite() apenas se o CPF e o CEP estiverem corretos
    } else {
        document.getElementById("veredicto").innerHTML = "CPF inválido ou CEP inválido!";
        document.getElementById("oculto").style.display = "none"; // Oculta as informações ocultas se os campos estiverem incorretos
    }
}

function aparecesite() {
    document.getElementById("oculto").style.display = "block";
    document.getElementById("oculto").style.color = "rgb(188, 53, 53)";
}
