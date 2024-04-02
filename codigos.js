function pegacuriosidade(script){
document.body.getelementbyid("curiosidade").value=(script.text)     

}

var script = document.createElement('script')

script.src = 'http://numbersapi.com/'+ numero +'/math?json';

document.body.appendChild(script)