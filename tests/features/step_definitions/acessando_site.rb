Quando('acesso a url') do
    visit('/treinamento/home')         #chama url padrao do env.rb e compreta a url com visit
    

  end
  
  Entao('verifico se estou na pagina correta') do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
    

  end