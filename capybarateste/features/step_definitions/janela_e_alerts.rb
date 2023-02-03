Quando('eu entro na janela e verifico a mensagem') do
    visit '/mudancadefoco/janela'
    janela = window_opened_by do
        click_link 'Clique aqui'
    end
    within_window janela do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        sleep(2)
        janela.close
        sleep(1)
    end
end

Quando('eu entro no alert e verifico faco a acao') do
    visit '/mudancadefoco/alert'
    find('button[onclick="jsAlert()"]').click
    sleep(2)
    page.accept_alert
    sleep(1)

    find('button[onclick="jsConfirm()"]').click
    sleep(2)
    page.dismiss_confirm
    sleep(1)

    find('button[onclick="jsPrompt()"]').click
    sleep(2)
    page.accept_prompt(with: 'Arthur Machado')
    @resultado = find('#result')
    expect(@resultado.text).to eq 'Você digitou: Arthur Machado'
    sleep(1)
end