Quando('faco cadastro') do
    visit('/users/new')
    fill_in(id: "user_name", with: 'italo')
    find('#user_lastname').set('souza')
    find('#user_email').send_keys('luisitalomoreirasouza@gmail.com')

    find('#user_address').set('fortaleza')
    find('#user_university').set('udemy')
    find('#user_profile').send_keys('QA')

    find('#user_gender').set('macho')
    find('#user_age').send_keys('31')

    find('input[data-disable-with="Enviando..."]').click

    sleep(5)
  end
  
  Entao('verifica se foi cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eq 'Usuário Criado com sucesso'
  end