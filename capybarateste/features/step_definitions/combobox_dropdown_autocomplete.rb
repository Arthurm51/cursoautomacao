Quando("interajo com dropdown e select") do
    visit '/buscaelementos/dropdowneselect'
    find('.btn.dropdown-button').click
    find('#dropdown3').click


    select 'Chrome', from: 'dropdown'
    sleep(2)
    find('option[value="2"]').select_option
    sleep(2)
end

Quando("preencho o autocomplete") do
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'Rio de Jane'
    sleep(1)
    find('ul', text: 'Rio de Janeiro').click
    sleep(2)
end