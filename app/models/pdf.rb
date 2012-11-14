class Pdf < ActiveRecord::Base
   attr_accessible :title, :desc,    :pdf,  :pdf_cache,:converted
   mount_uploader :pdf, PdfUploader
end
