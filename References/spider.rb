require 'capybara'
require 'capybara/dsl'
require 'capybara-webkit'


Capybara.run_server = false
Capybara.current_driver = :webkit
Capybara.app_host = "http://vancouver.craigslist.ca"

module Spider
  class Craigslist
    include Capybara::DSL

    def search
      visit('/search/jjj') #visit the / of stuff
      fill_in "query", with: "Ruby\n"
      # save_and_open_page

      all("p.row span.txt span.pl").each do |link|
        a = link.find("a")
        puts ">>>>>>>>#{link.text}#{a[:href]}"
      end
    end
  end
end

spider = Spider::Craigslist.new
spider.search
