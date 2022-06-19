function executar(){ 

    let menorValor = []
    let i = 0
    let qtd = 0
    let media = 0

    fetch('dados.json') 
        .then((response => response.json()))
        .then(json => {

            json.map(j => {
                
                if (j.valor > 0){ 
                    menorValor[i] = j.valor 
                    i++ 
                }    
            })   
            menorValor = menorValor.sort(function(a,b){return a-b})
            
            for (i=0; i<menorValor.length-1; i++){
                media = media + menorValor[i]
            }

            media = media / menorValor.length-1

            for (i=0; i<menorValor.length; i++){
                if(menorValor[i] > media){
                    qtd++
                }
            }

            document.querySelector('#firstContainer').innerHTML = `O menor valor de faturamento foi de R$ ${menorValor[0].toFixed(2)}`
            document.querySelector('#secondContainer').innerHTML = `O maior valor de faturamento foi de R$ ${menorValor[menorValor.length-1].toFixed(2)}`
            document.querySelector('#thirdContainer').innerHTML = `A media mensal foi de ${media.toFixed(2)} e ${qtd} dias tiveram faturamento maior que a media.`

        }) 
}

executar()