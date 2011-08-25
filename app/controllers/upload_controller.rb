require 'mime/types'
require 'open-uri'
require 'net/http'
class UploadController < ApplicationController
  def upload
    
  end
  
  def uploadFile     
    post = save_file(params[:upload])
    name = params[:upload]['datafile'].original_filename
    new_html = File.basename(name,File.extname(name)) + ".pdf"
    redirect_to "http://localhost:3000/data/#{new_html}"
    
  end
  
  def save_file(upload)
    name =  upload['datafile'].original_filename
    directory = "public/data"
    # create the file path
    path = File.join(directory, name)
    # write the file
    new_html = File.basename(name,File.extname(name)) + ".pdf"
    File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
    
    tem_path = File.join(directory, new_html)
    abcd = "java -jar E:/jodconverter-2.2.2/lib/jodconverter-cli-2.2.2.jar #{RAILS_ROOT}/#{path} #{RAILS_ROOT}/#{tem_path}"
    system(abcd)
    puts abcd
  end
  

  
end
