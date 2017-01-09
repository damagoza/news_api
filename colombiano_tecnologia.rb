require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'net/http'
url_rails = "http://www.elcolombiano.com"
url = "http://www.elcolombiano.com/tecnologia"
html_data = open(url)
object_site_html = Nokogiri::HTML(html_data)			
noticias = object_site_html.css('ol.noticias li')	
File.open("db/seeds.rb", "w") do |file|	
	noticias.each do |noticia|
		url = noticia.css('h3 a')
		link = url.map { |link| link['href'] }
		title = url.children
		texto = url.children
		image = noticia.css('img').attr('data-original')	
		if title.text != '' && texto.text != ''
			file.puts "NewsExtract.create(:MediumCategory_id => 6, :title => '#{title}', :content => '#{texto}', :url => '#{link[0]}', :image => '#{url_rails}#{image}')"			 	
		end	 		
	end
end