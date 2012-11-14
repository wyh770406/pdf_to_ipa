class HomeController < ApplicationController

  def index
    @users = User.all
    @pdf = Pdf.new
  end

  
  def route_map
    @route_map = `rake pdftoipa:generate`
  end  
end
