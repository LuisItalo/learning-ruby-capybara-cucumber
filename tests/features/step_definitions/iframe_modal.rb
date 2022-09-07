Quando('entro no iframe e preencho os campos') do
    visit('/mudancadefoco/iframe')

    #mudando foco para o iframe
    within_frame('id_do_iframe') do
        #açoes dentro do iframe
        #fill_in(id: 'first_name', with: 'italo')
        find('#first_name').set('italo')
        find('#last_name').set('souza')
        
    end  
end

Quando('entro no modal e verifico o texto') do
    visit('/mudancadefoco/modal')

    find('a[href="#modal1"]').click 
    within('#modal1')do
       have_text('Modal Teste')
       page.has_text?('Modal Teste')
    end
  end
  
  Quando('fecho o modal') do
    #find('a[class="modal-close waves-green btn-flat"]').click  #modelo css
    find('.modal-close.waves-green.btn-flat').click   # modelo classe
  end