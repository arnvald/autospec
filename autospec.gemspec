# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'autospec/version'

Gem::Specification.new do |spec|
  spec.name          = "autospec"
  spec.version       = Autospec::VERSION
  spec.authors       = ["Grzegorz Witek"]
  spec.email         = ["arnvald.to@gmail.com"]

  spec.summary       = %q{Run your specs automatically}
  spec.description   = %q{Extracted from Discourse project, a gem that runs your specs whenever you change your files, and does not let you forget about failed examples.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec", "~> 3.0"
  spec.add_dependency "spork"
  spec.add_dependency "message_bus"
  spec.add_dependency "listen", "0.7.3"
  spec.add_dependency 'rails', '~> 4.1'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
