Quando('realizo acoes com o teclado') do
    visit 'users/new'
    find('#user_name').send_keys(:page_down)
    sleep(2)
    find('input[value="Criar"]').send_keys(:enter)
    sleep(2)
  end