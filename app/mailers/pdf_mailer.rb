class PdfMailer < ActionMailer::Base
  default :from => "wyh770406@gmail.com"
 
  def pdf_download(user_or_pdf,download_url)
    @user_or_pdf = user_or_pdf
    @download_url  = download_url
    mail(:to => user_or_pdf.email, :subject => "Pdf Download Link")
  end  
end
