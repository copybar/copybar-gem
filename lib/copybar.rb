require 'copybar/version'
require 'open-uri'

module Copybar
  COPYBAR_HOST = "copybar.io"

  def self.build_uri(username, element_path, options = {})
    query_string = "?edit=true" if options[:edit]

    "http://#{COPYBAR_HOST}/#{username}/#{element_path}#{query_string}"
  end

  def self.read(username, element_path, options = {})
    html = open(build_uri(username, element_path, options)).read

    # return html safe string
    if html.respond_to?(:html_safe)
      html.html_safe
    else
      html
    end
  end
end

# provide root module helper method
def Copybar(username, element_path, options = {})
  Copybar.read(username, element_path, options)
end
