   
var cpfseparado = []
var cpfcalculado = []
var valor1 = 0
var valor2 = 0
    
function VerificaCPF(CPF){
    var cpf = document.getElementById("CPF").value; //converte o input recebido no html para uma variavel em js

    document.getElementById("veredicto").innerHTML = "..."
    //console.log("Função iniciada")

    if (/^\d+$/.test(cpf) && cpf.length === 11){ //verifica se o valor recebido são digitos de 0-9, especificado na expressão "/^\d+$/" e se o valor tem mais que 11 digitos
            cpfVerificado = cpf
            //console.log("CPF verificado") 
            trataCPF1(cpfVerificado)     //chama a função trataCPF1 fornecendo o CPF verificado como parâmetro
    }

    else { //caso não atenda alguma das condições, o usuário recebe uma mensagem informando que o valor está incorreto
        document.getElementById("veredicto").innerHTML = "tamanho inválido, um CPF por padrão deve ter 11 digitos"
    }
        
    }



function trataCPF1(cpf){ //engloba os preparativos e a verificação do primeiro digito indentificador de um cpf
    for (let i = 0; i <= 10; i++){ 
       let numseparado = cpf.substring(i, i+1) //separa cada numero do cpf e põe nessa variavel
        //console.log(numseparado)
        cpfseparado[i] = numseparado //atribui o valor da variavel a um espaço na array, no primeiro numero do contador, logo o primeiro número do cpf é adicionado no "i", que é 0, e o valor vai aumentando conforme o contador aumenta
        document.getElementById("veredicto").innerHTML = "Seu cpf está sendo analisado, aguarde..."
    }

    console.log("valores do cpf separados")

    for (let i = 0; i <= 8; i++){ //executa os passos para a verificação do primeiro digito indentificador
        cpfcalculado[i] = cpfseparado[i] * (10 - i) //os passos consistem em multiplicar os valores por um dado numero, as instruções exatas são encontrados no site da receita federal
        console.log(cpfcalculado[i])
    }
    valor1 = cpfcalculado[0] + cpfcalculado[1] + cpfcalculado[2] + cpfcalculado[3] + cpfcalculado[4] + cpfcalculado[5] + cpfcalculado[6] + cpfcalculado[7] + cpfcalculado[8]
    //console.log(valor1) //soma todos os resultados obtidos até o momento
    valor2 = (valor1*10)%11 //multiplica por 10 e então divide por 11, e obtém o resto
    //console.log(valor2)
    if(valor2 === 10 || valor2 === 11){ //caso o resto seja 10 ou 11, o valor é subsituido por 0
       valor2 = 0
       //console.log("digito de valor2 alterado para:")
       //console.log(valor2)
       //console.log(cpfseparado[9])
     }
    document.getElementById("veredicto").innerHTML = "Verificando primeiro digito indentificador..."
     if(valor2 == cpfseparado[9]){ //checa se os valores calculados anteriormente são os mesmos encontrados no primeiro digito indentificador
         document.getElementById("veredicto").innerHTML = "primeiro indentificador verificado!"
         trataCPF2()
     }
     else{ //caso não seja, o usuário recebe este aviso
            document.getElementById("veredicto").innerHTML = "Cpf Inválidado no primeiro indentificador!"
    }
}



function trataCPF2(){ //como os preparativos ja foram feitos, apenas altera alguns valores e faz a verificação do segundo digito indentificador
    console.log("recebeu cpf tratado")
    for (let i = 0; i <= 9; i++){
        cpfcalculado[i] = cpfseparado[i] * (11 - i) //similar ao caso do tratacpf1, contudo o numero a ser multiplicado inicia com 11 e vai até o 10º numero do cpf
        //console.log(cpfcalculado[i])
    }
    valor1 = cpfcalculado[0] + cpfcalculado[1] + cpfcalculado[2] + cpfcalculado[3] + cpfcalculado[4] + cpfcalculado[5] + cpfcalculado[6] + cpfcalculado[7] + cpfcalculado[8] + cpfcalculado[9] //similar ao caso anterior
    valor2 = (valor1*10)%11
    if(valor2 === 10 || valor2 === 11){
        valor2 = 0
        //console.log("digito de valor2 alterado para:")
        //console.log(valor2)
        //console.log(cpfseparado[10])
      }
    if(valor2 == cpfseparado[10]){ //checa se os valores calculados anteriormente são os mesmos encontrados no segundo digito indentificador
        document.getElementById("veredicto").innerHTML = "CPF valido!"
    }
    else{ //caso não seja, o usuário recebe este aviso
           document.getElementById("veredicto").innerHTML = "Cpf Inválidado no segundo indentificador!"
   }

}
