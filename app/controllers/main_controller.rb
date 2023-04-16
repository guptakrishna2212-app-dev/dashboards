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

  def symbolscomplete
    require "open-uri"
    require "json"

    a = open("https://api.exchangerate.host/symbols").read

    @b = JSON.parse(a).fetch("symbols").keys
    @selected_currency = params.fetch(:from_currency)
    render({:template => "forexsymbolsfinal.html.erb"})
  end

  def currency_conversion
    @first_currency = params.fetch("from_currency")
    @second_currency = params.fetch("to_currency")
    raw_data= open("https://api.exchangerate.host/convert?from=#{@first_currency}&to=#{@second_currency}").read
    @parsed_data = JSON.parse(raw_data).fetch("info").fetch("rate")
    render({:template => "forexconverted.html.erb"})
  end
end
