Quando('marco um checkbox e um radiobox') do
    visit('/buscaelementos/radioecheckbox')

    # CHECKBOX
    find('label[for="white"]').click 
    #metodo para elementos invisiveis
    check('purple', allow_label_click: true)
    sleep(3)
    uncheck('purple', allow_label_click: true)
    sleep(3)

    #RADIOBOX
    choose('red', allow_label_click: true)
  end