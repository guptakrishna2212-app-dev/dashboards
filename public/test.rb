require "open-uri"
require "json"

a = URI.open("https://api.exchangerate.host/symbols").read

b = JSON.parse(a)

c = Array.new

@symb = b.fetch("symbols").keys

p @symb
