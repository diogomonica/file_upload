class PagesController < ApplicationController
  def main
  end

  def upload
    puts "PARAMS: #{params.inspect}"
    file = params.delete('file')
    puts file
    render :json => "File has been uploaded successfully"
  end
end
