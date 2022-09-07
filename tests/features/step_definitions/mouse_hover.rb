Quando('seleciono o mouse hover') do
    visit('/iteracoes/mousehover')

    find('.card').hover.click
    sleep(3)
  end