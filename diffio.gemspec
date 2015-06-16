Gem::Specification.new do |s|
  s.name        = 'diffio'
  s.version     = '0.0.6'
  s.date        = '2015-06-14'
  s.summary     = "diff.io api gem"
  s.description = "A gem to generate diff.io api tokens, which then visually compare pages."
  s.authors     = ["Matt Morley"]
  s.email       = 'matt@diff.io'
  s.files       = [
    "Gemfile",
    "lib/diffio.rb",
    "VERSION"
  ]
  s.homepage    = 'https://github.com/mpcm/diff_io_gem'
  s.license     = 'MIT'
  s.require_paths = ["lib"]
end