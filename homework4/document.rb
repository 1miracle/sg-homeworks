require 'nokogiri'
require 'open-uri'

class Document
  def initialize(link)
    @link = link
  end

  def parse(tag)
    @doc = Nokogiri::HTML(open(@link))

    @doc.css(tag).each do |link|
      puts link.content
    end
  end
end
