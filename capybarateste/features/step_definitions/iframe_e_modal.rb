Quando('entro no iframe e preencho os campos') do
    visit '/mudancadefoco/iframe'
    within_frame('id_do_iframe') do
        fill_in(id: 'first_name', with: 'Arthur')
        fill_in(id: 'last_name', with: 'Machado')
    end
    sleep(2)
end

Quando('entro no modal e verifico o texto') do
    visit '/mudancadefoco/modal'
    find('a[href="#modal1"]').click
    within('#modal1')do
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'
    end
    sleep(2)
end

Quando('fecho o modal') do
    find('.modal-close').click
    sleep(2)
end