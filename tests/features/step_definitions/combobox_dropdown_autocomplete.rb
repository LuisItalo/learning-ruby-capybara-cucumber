Quando('interajo com dropdown e select') do
    visit('/buscaelementos/dropdowneselect')
    
    #DROPDOWN
    find('a[data-activates="dropdown"]').click
    find('#dropdown3').click
    #SELECT
    select('Chrome', from: 'dropdown')
    find('option[value="2"]').select_option
    sleep(3)

  end

Quando('preencho o autocomplete') do
    visit('/widgets/autocomplete')
    find('input[class="autocomplete"]').set 'cea'
    find('ul', text: 'Ceará').click
    sleep(5)
  end
  