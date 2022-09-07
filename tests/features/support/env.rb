#require 'capybara/cucumber' #para finalizar teste a cada cenario

require 'capybara'         #neste modo o teste nao finaliza a cada cenario
require 'capybara/dsl'       #neste modo o teste nao finaliza a cada cenario
require 'capybara/rspec/matchers'  #neste modo o teste nao finaliza a cada cenario
require 'selenium-webdriver'

World(Capybara::DSL)        #neste modo o teste nao finaliza a cada cenario
World(Capybara::RSpecMatchers)      #neste modo o teste nao finaliza a cada cenario

Capybara.configure do |config|
    #selenium    selenium_chrome    selenium_chrome_healess

    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5

end