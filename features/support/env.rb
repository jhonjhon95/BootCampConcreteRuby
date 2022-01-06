require 'rubygems'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'webdrivers'
require 'rspec'
require 'site_prism' #declarar para utilizar
require 'site_prism/all_there' #declarar para utilizar
require_relative 'helper.rb'

Capybara.register_driver :selenium do |driver|
  Capybara::Selenium::Driver.new(driver, :browser => :chrome)
end

Capybara.configure do
  Capybara.default_driver = :selenium
  Capybara.default_max_wait_time = 5
  Capybara.app_host = 'https://rastreamentocorreios.info'
  #Capybara.page.driver.browser.manage.window.maximize
end