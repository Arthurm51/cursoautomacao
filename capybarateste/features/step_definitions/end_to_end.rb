Quando('eu cadastro o usuario') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Arthur')
    find('#user_lastname').set('Machado')
    fill_in(id: 'user_email', with: 'thuur51@gmail.com')
    find('input[value="Criar"').click
    sleep(1)
  end
  
  Entao('verifico se o usuario foi cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
    sleep(2)
  end
  
  Quando('edito um usuario') do
    sleep(1)
    find('.btn.waves-light.blue').click
  end
  
  Entao('verifico se o usuario foi editado') do
    
  end