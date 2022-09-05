Quando('clico em botoes') do
    visit('/')
    click_on('Começar Automação Web')  #click_link_or_button sao a mesma coisa

    visit('/buscaelementos/botoes')
    click_button(class: 'btn waves-light')

    find('a[onclick="ativaedesativa1()"]').click

    find('a[onclick="ativaedesativa2()"]').double_click

    find('a[onclick="ativaedesativa3()"]').right_click

    visit('/')
    click_link('Github 9978cda794409876008629ede27d85d8d86196aec22d96de18693cd366470a4b')


    sleep(5)
  end