require 'fileutils'
class PdfObserver < ActiveRecord::Observer
  def after_save(pdf)
    # pdf.logger.info('New pdf added!')
    
    #apdf = pdf.pdf.url.split(".pdf")
    #replace_str = apdf[0].split("/").last
    #uuid = UUID.new
    #FileUtils.cp("/home/wyh77/shanghai_tonight_guide/public/uploads/pdf/pdf/"+pdf.id.to_s+"/"+apdf.last,"/home/wyh77/shanghai_tonight_guide/public/uploads/pdf/pdf/"+pdf.id.to_s+"/"+apdf.last+"1")
    #puts uuid.generate.to_s
    
    #FileUtils.mv(Rails.root.to_s+"/public"+pdf.pdf.url,  Rails.root.to_s+"/public"+apdf[0].gsub(replace_str,"")+uuid.generate.to_s+".pdf")
    #FileUtils.cp("/home/wyh77/shanghai_tonight_guide/public"+pdf.pdf.url,"/home/wyh77/shanghai_tonight_guide/public"+apdf[0]+".ipa")
  end	

end
