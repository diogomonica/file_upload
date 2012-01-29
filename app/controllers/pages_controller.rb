class PagesController < ApplicationController
  def main
  end

  def upload
    file = params.delete('file')
    puts file.inspect
    puts params.keys.inspect
    file_name = request.env['HTTP_X_FILE_NAME']
    Rails.cache.write(file_name, "BLA", :expires_in => 30.minutes)
    puts "OMGOMG: #{Rails.cache.read(file_name).inspect}"
    expires_in 30.minutes
    puts "WTF?"
    render :json => "File has been uploaded successfully"
  end
end
