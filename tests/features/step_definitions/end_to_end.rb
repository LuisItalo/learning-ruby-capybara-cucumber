Quando('cadastro um usuario') do
    visit('/users/new')
    find('#user_name').set('italo')
    find('#user_lastname').set('souza')
    find('#user_email').set('italo@eu.com')
    find('input[value="Criar"]').click
end
  
  Entao('verifico se usuario foi cadastrado') do
    have_text('Usuário criado com sucesso')
end
  
  Quando('edito um usuario') do
    sleep(5)
    find('.btn.waves-light.blue').click
end
  
  Entao('verifico se usuario foi editado') do
    pending # Write code here that turns the phrase above into concrete actions
  end