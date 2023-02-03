Quando('eu multiplico minhas {float} pelo {float}.') do |laranja, valor|
    @multiplicação = laranja * valor
end


Entao('eu vejo qual {float} da multiplicação.') do |resultado|
    expect(@multiplicação).to eq resultado
end