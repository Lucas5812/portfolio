const tema = document.getElementById('trocar_tema');

tema.addEventListener('click',function(){
    document.body.classList.toggle('temaescuro')

    var cor = document.body.className;
    if (cor == "temaclaro"){
        this.textContent="Escuro";
    }
    else{   
        this.textContent="Claro";
    }
} )
