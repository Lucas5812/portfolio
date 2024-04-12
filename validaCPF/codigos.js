   
    function VerificaCPF(CPF){
        var cpf = document.getElementById("CPF").value;
        document.getElementById("veredicto").innerHTML = "..."
        console.log("Função iniciada")
        if (/^\d+$/.test(cpf) && cpf.length === 11){
            cpfVerificado = cpf
            console.log("CPF verificado") 
            trataCPF(cpfVerificado)
               
        }
        else {
            document.getElementById("veredicto").innerHTML = "tamanho inválido, um CPF por padrão deve ter 11 digitos"
        }
        
    }

    function trataCPF(cpf){
        for (let i = 0; i <= 11; i++){
            
        }
    }