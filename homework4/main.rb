require_relative 'document'
require_relative 'header'
require_relative 'link'

link = 'http://www.nokogiri.org/tutorials/installing_nokogiri.html'

puts '-LINKS-'
Link.new(link).parse
puts '-HEADERS-'
Header.new(link).parse
