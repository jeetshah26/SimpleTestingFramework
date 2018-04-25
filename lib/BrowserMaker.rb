
module BrowserMaker
  require 'watir'
  require 'selenium-webdriver'

  def self.create_browser
    Watir::Browser.new :chrome
  end
end