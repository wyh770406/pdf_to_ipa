require 'fileutils'
class Pdf < ActiveRecord::Base
   attr_accessible :title, :desc,    :pdf,  :pdf_cache,:converted
   mount_uploader :pdf, PdfUploader

   after_destroy :delete_upload_folder

   def delete_upload_folder
  	apdf = self.pdf.url.split(".pdf")
    replace_str = apdf[0].split("/").last

    FileUtils.rm_rf(Rails.root.to_s+"/public"+apdf[0].gsub(replace_str,"") )
   end
end
