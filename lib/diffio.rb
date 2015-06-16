require 'addressable/uri'
require 'JWT'
require 'digest/sha1'

module Diffio
  class Diffio
    attr_accessor :apikey, :secret, :url1, :url2, :host

    def initialize options
      @apikey = options[:apikey] || ENV['DIFFIO_API']
      @secret = options[:secret] || ENV['DIFFIO_SECRET']
      @host = ENV['DIFFIO_HOST'] || 'https://api.diff.io'

      @url1 = Addressable::URI.parse options[:url1].to_s
      @url2 = Addressable::URI.parse options[:url2].to_s if options.has_key? :url2
    end

    def request_url
      claim = {}
      claim[:iss] = apikey.to_s
      claim[:url1] = url1
      claim[:url2] = url2 if url2
      claim[:jti] = Digest::SHA1.hexdigest( claim.to_s ) + Time.now.to_f.to_s
      
      token = JWT.encode claim, secret, 'HS256'
      "#{host}/v1/diff/#{apikey}/#{token}"
    end
  end
end
