require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'net/http'

url = "http://www.eltiempo.com/tecnosfera"
html_data = open(url)
object_site_html = Nokogiri::HTML(html_data)			
noticias = object_site_html.css('article h2 a')	
puts noticias.count
File.open("db/seeds.rb", "w") do |file|	
	noticias.each do |noticia|
		title = noticia.text.gsub(/['"]/, " ")
		texto = noticia.text.gsub(/['"]/, " ")
		link = noticia.attr('href')
		# puts "#{title} #{texto} #{link}"
		if title != '' && texto != ''
			file.puts "NewsExtract.create(:MediumCategory_id => 4, :title => '#{title}', :content => '#{texto}', :url => '#{link[0]}')"			 	
		end	 		
	end
end