require File.dirname(__FILE__) + "/lib/copybar/version"

Gem::Specification.new do |s|
  s.name             = "copybar"
  s.version          = Copybar::VERSION
  s.date             = Date.today.to_s
  s.authors          = ["Marc Cantwell"]
  s.email            = ["marc.a.cantwell@gmail.com"]
  s.summary          = "Integrates any Ruby / Rails / Sinatra web app with Copybar (content management as a service)"
  s.description      = "Integrates any Ruby / Rails / Sinatra web app with Copybar (content management as a service) "
  s.homepage         = "http://github.com/copybar/gem"
  s.extra_rdoc_files = ["README.md"]
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_paths    = ["lib"]
  s.files            = `git ls-files`.split("\n")
  s.test_files       = []
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.add_development_dependency "rake"
end

