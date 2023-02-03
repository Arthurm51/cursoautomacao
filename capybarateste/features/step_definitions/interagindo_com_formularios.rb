Quando("eu faço cadastro") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Arthur')
    find('#user_lastname').set('Machado')
    find('#user_email').send_keys('thuur51@gmail.com')
    fill_in(id: 'user_address', with: 'Mormaço - RS')
    fill_in(id: 'user_university', with: 'Atitus')
    fill_in(id: 'user_profile', with: 'QA Test Analyst')
    fill_in(id: 'user_gender', with: 'Masculino')
    fill_in(id: 'user_age', with: '21')
    sleep(2)
    find('input[value="Criar"]').click
    sleep(2)
end

Entao("verifico se fui cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
end