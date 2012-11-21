require "filepicker/version"
require 'net/http'

module Filepicker
  def self.get_file_contents(fpurl)
    uri = URI.parse(fpurl)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(uri.request_uri)

    response = http.request(request)
    return response.body
  end
end
