lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puppet/resource_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'puppet-resource_api'
  spec.version       = Puppet::ResourceApi::VERSION
  spec.authors       = ['David Schmitt']
  spec.email         = ['david.schmitt@puppet.com']

  spec.summary       = 'This library provides a simple way to write new native resources for puppet.'
  spec.homepage      = 'https://github.com/puppetlabs/puppet-resource_api'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'childprocess', '~> 0.7'
  spec.add_runtime_dependency 'hocon', '>= 1.0'

  spec.extensions = 'ext/mkrf_conf.rb'
end
