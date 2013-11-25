require 'nokogiri'
require 'open-uri'
require 'main'

class Solice
  def check(number)
    data = Nokogiri::HTML(open('http://aeronet.gsfc.nasa.gov/new_web/Data_Transfer_Logs/K7/last_1440_minutes.html'))
    found = data.css("a").select {|x| x.attr("href") == "##{number}"}
    found.first
  end
end

Main {
  argument('number')

  option('mail') {
    argument :optional
    description 'email address to send mail to when photometer is not there'
  }

  def run
    solice = Solice.new

    if solice.check(params['number'].value)
      p "ok"
    else
      p "not found"
    end
  end

}
