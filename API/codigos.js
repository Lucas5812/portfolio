function pegacuriosidade(fato) {
    document.getElementById("curiosidade").textContent = fato;
}

const pesquisarcuriosidade = async () => {
    const numero = document.getElementById("numero").value;
    const url = 'http://numbersapi.com/' + numero + '/math?json';

    try {
        const resposta = await fetch(url);
        const dados = await resposta.json();
        pegacuriosidade(dados.text);
    } catch (erro) {
        console.error('Ocorreu um erro ao buscar a curiosidade:', erro);
    }
};

document.getElementById("numero").addEventListener("blur", pesquisarcuriosidade);