Quando("acesso a url de botoes") do
    visit '/buscaelementos/botoes'
    
end

Entao("verifico se encontrei os elementos") do
    
    #all busca todos os elementos que contenham a busca

    page.all('.btn')
    #busca um elemento mapeado
    find('#teste')
    find_by_id('teste')
    find_button(class: 'btn waves-light')
    first('.btn')
    find_link(href: "https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA")
    
end