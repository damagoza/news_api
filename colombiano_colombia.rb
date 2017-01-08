require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'net/http'

url = "http://www.elcolombiano.com/colombia"
html_data = open(url)
object_site_html = Nokogiri::HTML(html_data)			
noticias = object_site_html.css('ol.noticias li')	
File.open("db/seeds.rb", "w") do |file|	
	noticias.each do |noticia|
		url = noticia.css('h3 a')
		link = url.map { |link| link['href'] }
		title = url.children
		texto = url.children	
		if title.text != '' && texto.text != ''
			file.puts "NewsExtract.create(:MediumCategory_id => 5, :title => '#{title}', :content => '#{texto}', :url => '#{link[0]}')"			 	
		end	 		
	end
end