class HomeController < ApplicationController

  def index
   # @users = User.all
    #@current_user_name = current_user.name if current_user
    @pdf = Pdf.new
  end

  
  def exec_rake
    @route_map = `rake pdftoipa:generate`
 
  end  
end
