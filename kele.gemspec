Gem::Specification.new do |s|
   s.name          = 'kele'
   s.version       = '0.0.1'
   s.date          = '2016-12-02'
   s.summary       = 'Kele API Client'
   s.description   = 'A client for the Bloc API'
   s.authors       = ['Gama Aguilar']
   s.email         = 'gama-aguilar@hotmail.com'
   s.files         = ['lib/kele.rb', 'lib/kele/roadmap.rb', 'lib/kele/messages.rb', 'lib/kele/submissions.rb']
   s.require_paths = ["lib"]
   s.homepage      =
     'http://rubygems.org/gems/kele'
   s.license       = 'MIT'
   s.add_runtime_dependency 'httparty', '~> 0.13'
   s.add_runtime_dependency 'json', '~>1.8'
 end
