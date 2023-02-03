#language: pt

@funcional
Funcionalidade: Calculo de subtração e soma

-Eu como usuário
-Quero fazer uma subtração e uma soma.

@tag_cenario
Cenario: Fazer uma divisão.
Quando eu divido dois numeros 10 / 2
Então o resultado da divisão

Cenario: Fazer uma multiplicação.
Quando eu multiplico dois numeros 10 * 2
Então o resultado da multiplicação



### Para rodar as tags separadas executar: cucumber --tags '@funcional'
### Para nao rodas determinada tag: cucumber --tags 'not @funcional'