require 'nokogiri'
require 'open-uri'

class Solice
  def check(number)
    data = Nokogiri::HTML(open('http://aeronet.gsfc.nasa.gov/new_web/Data_Transfer_Logs/K7/last_1440_minutes.html'))
    data.css("a").select {|x| x.attr("href") == "#51"} != nil
  end
end
