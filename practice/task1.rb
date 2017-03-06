require 'faraday'

# RUBOCOP
class Image
  def self.download(url)
    resp = Faraday.get(url)
    con = resp.headers['content-type']
    raise ArgumentError if resp.status.to_s =~ (/4\d+/ || /5\d+/)
    raise TypeError if con.split('/').first != 'image'

    File.open("image.#{con.split('/').last}", 'wb') do |file|
      file.write(resp.body)
    end
  end
end

# Image.download('https://www.hello.com/img_/hello_logo_hero.png')
# Image.download('http://rubular.com/')
Image.download('https://d13yacurqjgara.cloudfront.net/users/4859/screenshots/3322742124/mti_wip.gif')
