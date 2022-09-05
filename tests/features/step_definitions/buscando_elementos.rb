Quando('acesso a url de botoes') do
    visit('/buscaelementos/botoes')
  end
  
Entao('verifico se encontrei os elementos') do
    #all busca todos os elementos que contenha o all
    page.all(:css, '.btn')  # . para diser que é classe

    # busca elemento mapeado
    find('#teste')  # # para dizer que é id

    #busca pelo id
    find_by_id('teste') 

    # busca pelo botao
    find_button(class: 'btn waves-light')

    #busca o primeiro elemento que contenha o elemento mapeado
    first('.btn')

    #busca por algum link
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end