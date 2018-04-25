require_relative '../../lib/BrowserMaker'

Before('@browser') do
  @browser = BrowserMaker.create_browser
end