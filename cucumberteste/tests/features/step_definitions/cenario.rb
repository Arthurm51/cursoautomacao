Dado('eu tenha {int} laranjas') do |int|
    puts int
    @laranjas = int
    end
    
Quando('eu como {int} laranjas') do |int2|
    @comer = int2
    @resultadoComer = @laranjas - @comer
end
    
Então('eu vejo quantas laranjas sobraram.') do
    puts @resultadoComer
    expect(@resultadoComer).to eq 8
end

Quando('eu compro {int} laranjas') do |int3|
    @comprar = int3
    @resultadoComprar = @laranjas + @comprar
end

Então('eu vejo quantas laranjas eu tenho.') do
    puts @resultadoComprar
    expect(@resultadoComprar).to eq 15
end