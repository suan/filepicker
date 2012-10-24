require "filepicker/version"

module Filepicker
  def self.getFileContents(fpurl)
    uri = URI.parse(fpurl)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(uri.request_uri)

    response = http.request(request)
    return response.body
  end
end
