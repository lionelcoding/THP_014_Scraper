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

def get_townhall_email(townhall_url)
# page = Nokogiri::HTML(RestClient.get('http://annuaire-des-mairies.com/95/andilly.html'))
    email = townhall_url.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').collect(&:text)
end

def get_townhall_urls()
ntab = []
email = []
ville = []
page = Nokogiri::HTML(RestClient.get('https://www.annuaire-des-mairies.com/val-d-oise.html'))
href = page.xpath('//tr[*]/td[*]/p/a/@href').collect(&:text) 
    href.each do |newtb|
        ntab = "https://www.annuaire-des-mairies.com" + newtb.gsub('.','').gsub('html','')
        ntab = Nokogiri::HTML(URI.open(ntab))
        email << get_townhall_email(ntab)
        ville << newtb.gsub("./95/","").gsub(".html","")
    end
    a = Hash[ville.zip(email)]
    pp a
end

get_townhall_urls()