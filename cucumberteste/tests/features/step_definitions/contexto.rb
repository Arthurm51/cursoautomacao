Dado('que eu tenho {int} laranjas na bolsa.') do |total|
    @laranjas = total
end

Quando('eu coloco {int} laranjas na bolsa.') do |add|
    @coloquei = add
    @soma = @laranjas + @coloquei
end

Entao('eu verifico se o total de laranjas na bolsa é {int}.') do |totaladd|
    expect(@soma).to eq totaladd
end

Quando('eu retiro {int} laranjas na bolsa.') do |rem|
    @retirei = rem
    @subs = @laranjas - @retirei
end

Entao('eu verifico com quantas laranjas eu fiquei na bolsa.') do
    expect(@subs).to eq 8
end