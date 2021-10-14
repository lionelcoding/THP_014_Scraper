require 'nokogiri'
require 'open-uri'
require 'rest-client'
require 'pp'


def scrap()
    page = Nokogiri::HTML(RestClient.get('https://coinmarketcap.com/'))
        title = page.xpath('//tr[*]/td[3]').collect(&:text)
        price = page.xpath('//tr[*]/td[4]').collect(&:text)
    a = Hash[title.zip(price)]
    pp a
end
scrap()