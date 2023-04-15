class MainController < ApplicationController
  def main
    render({:template => "main.html.erb"})
  end
end
