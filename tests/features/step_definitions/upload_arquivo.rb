Quando('faço um upload de arquivo') do
    visit('/outros/uploaddearquivos')

    #attach_file('upload', '/home/luis/capybara-cucumber/foto.jpeg', make_visible: true)
    
    @foto = File.join(Dir.pwd, 'features/foto.jpeg')
    attach_file('upload', @foto, make_visible: true)
    sleep(3)
  end