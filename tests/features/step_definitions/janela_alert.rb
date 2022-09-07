Quando('entro na janela e vetifico a mensagem') do
    visit('/mudancadefoco/janela')

    #abrir janela
    janela = window_opened_by do
        click_link 'Clique aqui'
    end

    #mudar para janela aberta
    within_window (janela) do
        # verifica o site 
        expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        # assert no site 
        have_text('Você Abriu uma nova janela!!')  
        @mensagem = find('.red-text.text-darken-1.center') 
        expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'

        # fecha a janela
        janela.close
        sleep(3)
    end

    #SEGUNDA OPCAO
    #windows_last
        click_link('Clique aqui')

        #mudando para ultima aba
        switch_to_window(windows.last)

        expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        have_text('Você Abriu uma nova janela!!')  
        @mensagem = find('.red-text.text-darken-1.center') 
        expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'

        windows.last.close
  end
  
  Quando('entro no alert e vetifico faco a acao') do
    visit('/mudancadefoco/alert')
    
    #para confirmar
    find('button[onclick="jsAlert()"]').click
    page.accept_alert
    #page.accept_confirm #para confirmar

    
    find('button[onclick="jsConfirm()"]').click
    page.dismiss_confirm #para cancelar
    

    
    find('button[onclick="jsPrompt()"]').click
    sleep(2)
    page.accept_prompt(with: 'italo') #para digitar o prompt
    
    page.dismiss_prompt #para recussar o prompt

  end