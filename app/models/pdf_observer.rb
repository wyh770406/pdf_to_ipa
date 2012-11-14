require 'fileutils'
class PdfObserver < ActiveRecord::Observer
  def after_save(pdf)
    # pdf.logger.info('New pdf added!')
    apdf = pdf.pdf.url.split(".pdf")

    #FileUtils.cp("/home/wyh77/shanghai_tonight_guide/public/uploads/pdf/pdf/"+pdf.id.to_s+"/"+apdf.last,"/home/wyh77/shanghai_tonight_guide/public/uploads/pdf/pdf/"+pdf.id.to_s+"/"+apdf.last+"1")

    #FileUtils.cp("/home/wyh77/shanghai_tonight_guide/public"+pdf.pdf.url,"/home/wyh77/shanghai_tonight_guide/public"+apdf[0]+".ipa")
  end	
end
