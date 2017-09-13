Gem::Specification.new do |s|
  s.name        = 'command-alias'
  s.version     = '0.0.0'
  s.executables << 'command-alias'
  s.date        = '2017-09-12'
  s.summary     = 'Useful command alias'
  s.description = 'The simple, useful command alias such as git, rails, etc.'
  s.authors     = ['Bach Van Ngoc']
  s.email       = 'nevesmile12b1@gmail.com'
  s.files       = `git ls-files lib`.split("\n")
  s.homepage    =
    'https://github.com/NeverSmileK57CLC/command-alias'
  s.license       = 'MIT'
  # s.cert_chain  = ['certs/public_cert.pem']
  # s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/
end
