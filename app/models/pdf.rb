require 'fileutils'
class Pdf < ActiveRecord::Base
   attr_accessible :title, :desc,    :pdf,  :pdf_cache,:converted,:email
   mount_uploader :pdf, PdfUploader

   belongs_to :user

   after_destroy :delete_upload_folder
   validates_presence_of :email
   validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :on => :create

   def delete_upload_folder
  	apdf = self.pdf.url.split(".pdf")
    replace_str = apdf[0].split("/").last

    FileUtils.rm_rf(Rails.root.to_s+"/public"+apdf[0].gsub(replace_str,"") )
   end
end
