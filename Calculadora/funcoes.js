/*Bloco de funções matemáticas*/
function somar() {
    var r1 = parseInt (document.getElementById("v1").value);
    var r2 = parseInt (document.getElementById("v2").value);
    var resposta = r1 + r2;
    document.getElementById("res").innerHTML = "Resposta:  " + resposta;
}
function subtrair() {
    var r1 = parseInt (document.getElementById("v1").value);
    var r2 = parseInt (document.getElementById("v2").value);
    var resposta = r1 - r2;
    document.getElementById("res").innerHTML = "Resposta:  " + resposta;
}
function dividir() {
    var r1 = parseInt (document.getElementById("v1").value);
    var r2 = parseInt (document.getElementById("v2").value);
    var resposta = r1 / r2;
    document.getElementById("res").innerHTML = "Resposta:  " + resposta;
}
function multiplicar() {
    var r1 = parseInt (document.getElementById("v1").value);
    var r2 = parseInt (document.getElementById("v2").value);
    var resposta = r1 * r2;
    document.getElementById("res").innerHTML = "Resposta:  " + resposta;
}

/*Bloco de adição de numeros */
var ultvselecionado = "v1"
function add(numero){
    var r1 = document.getElementById("v1").value;
    var r2 = document.getElementById("v2").value;
    
    if (ultvselecionado == "r1"){
        r1 += numero
        document.getElementById("v1").value =  r1;
    }
    else if (ultvselecionado == "r2"){
        r2 += numero
        document.getElementById("v2").value = r2;
    }
}

document.getElementById("v1").addEventListener("click", function(){
    ultvselecionado = "r1";
});
document.getElementById("v2").addEventListener("click", function(){
    ultvselecionado = "r2";
})
