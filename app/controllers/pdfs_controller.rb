class PdfsController < ApplicationController
  def new
        @pdf = Pdf.new
  end
  def create

    @pdf = Pdf.new(params[:pdf])
    @pdf.user_id = current_user.id if current_user

    respond_to do |format|
      if @pdf.save
        #{:controller=>:home,:action=>:exec_rake}
        format.html { redirect_to({:controller=>:home,:action=>:exec_rake}, :notice => 'Pdf created') }
        format.json
      else
        format.html { render :action => "new" }
        format.json
      end
    end

  end	
end
