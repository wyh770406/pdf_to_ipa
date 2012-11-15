require 'fileutils'
namespace :pdftoipa do
  puts 'ipa generating'
  task :generate => :environment do
         pdf = Pdf.where(:converted=>false).last
         if pdf.nil? 
          puts "no pdf to convert"
          return
         end
         apdf = pdf.pdf.url.split(".pdf")

         begin 
          # FileUtils.cd(Rails.root.to_s+"/public"+apdf[0].gsub(replace_str,""))
           FileUtils.cp(Rails.root.to_s+"/public"+pdf.pdf.url,  Rails.root.to_s+"/public"+apdf[0]+".ipa")
           puts "ipa generate finished"
           download_url =  "http://127.0.0.1:3000"+apdf[0]+".ipa"
           puts "download file link: http://127.0.0.1:3000"+apdf[0]+".ipa"
           pdf.update_attributes(:converted=>true)
           # if !current_user.nil?
           #    user_or_pdf = current_user
           # else
           #    user_or_pdf = pdf
           # end
           PdfMailer.pdf_download(pdf,download_url).deliver
           puts "email send correctly"  

         rescue Exception => e
           puts "ipa generate failed"
         end

  end
end