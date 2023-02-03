Quando('eu divido dois numeros {int} \/ {int}') do |div1, div2|
    @resdiv = div1 / div2
end

Então('o resultado da divisão') do
    expect(@resdiv).to eq 5
end

Quando('eu multiplico dois numeros {int} * {int}') do |mult1, mult2|
    @resmult = mult1 * mult2
end

Então('o resultado da multiplicação') do
    expect(@resmult).to eq 20
end