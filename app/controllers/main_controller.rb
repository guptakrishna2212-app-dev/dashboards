class MainController < ApplicationController
  def main
    render({:template => "main.html.erb"})
  end

  def forex
    require "open-uri"
    require "json"

    a = open("https://api.exchangerate.host/symbols").read

    @b = JSON.parse(a).fetch("symbols").keys

    render({:template => "forex.html.erb"})
  end
end
