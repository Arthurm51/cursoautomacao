Quando('clico em um botao') do
    visit '/buscaelementos/botoes'
    find('#teste').click
  end
  
  Entao('verifico se o texto desapareceu na tela com sucesso') do
    assert_text('Você Clicou no Botão!')
    has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')
    sleep(2)
    find('#teste').click
    sleep(2)
    assert_no_text('Você Clicou no Botão!')
    has_no_text?('Você Clicou no Botão!')
  end