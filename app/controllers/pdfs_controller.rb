class PdfsController < ApplicationController
  def create

    @pdf = Pdf.new(params[:pdf])

    respond_to do |format|
      if @pdf.save
        format.html { redirect_to(root_path, :notice => 'Pdf created') }
        format.json
      else
        format.html {  }
        format.json
      end
    end

  end	
end
