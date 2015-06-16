require './lib/diffio'

ENV['DIFFIO_API'] = 'Pxxxxxxxxxxxxxxxxxxxxxxx'
ENV['DIFFIO_SECRET'] = 'Sxxxxxxxxxxxxxx'

a = Diffio::Diffio.new(:url1 => 'http://github.com')
puts a.request_url

puts ""
puts Diffio::Diffio.new(
	:url1 => 'http://github.com/a',
	:url2 => 'http://github.com/b'
).request_url