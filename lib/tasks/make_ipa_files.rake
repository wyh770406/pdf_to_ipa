require 'fileutils'
namespace :pdftoipa do
  puts 'ipa generating'
  task :generate => :environment do
         pdf = Pdf.where(:converted=>false).last
         apdf = pdf.pdf.url.split(".pdf")

         begin 
           FileUtils.cp(Rails.root.to_s+"/public"+pdf.pdf.url,  Rails.root.to_s+"/public"+apdf[0]+".ipa")
           puts "ipa generate finished"
           puts "download file link: http://127.0.0.1:3000"+apdf[0]+".ipa"
           pdf.update_attributes(:converted=>true)

         rescue Exception => e
           puts "ipa generate failed"
         end
       #link_to 'file',Rails.root.to_s+"/public"+apdf[0]+".ipa"
  end
end