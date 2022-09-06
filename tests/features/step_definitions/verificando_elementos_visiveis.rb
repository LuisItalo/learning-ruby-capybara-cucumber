Quando('clico no botao') do
    visit('/buscaelementos/botoes')
    find('#teste').click
    
  end
  
  Entao('verifico se o texto apareceu na tela com sucesso') do
    # @texto = find('#div1')
    # expect(@texto.text).to eql 'Você Clicou no Botão!'
    
    # BUSCANDO TEXTO
    page.assert_text('Você Clicou no Botão!')
    expect(page.assert_text('Você Clicou no Botão!')).to eql true

    page.has_text?('Você Clicou no Botão!')
    expect(page.has_text?('Você Clicou no Botão!')).to eq true

    have_text('Você Clicou no Botão!')
    expect(page.has_text?('Você Clicou no Botão!')).to eq true
  end