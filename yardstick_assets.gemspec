# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yardstick-assets/version'

Gem::Specification.new do |spec|
  spec.name          = "yardstick-assets"
  spec.version       = YardstickAssets::VERSION
  spec.authors       = ["Jason Wall"]
  spec.email         = ["jasonw@getyardstick.com"]
  spec.description   = %q{Gem that wraps up measure laf assets so other products that tie into measure look like they belong.}
  spec.summary       = %q{Yardstick measure assets gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lesselements-rails", ">= 0.9"
  spec.add_runtime_dependency "less-rails-bootstrap", '~> 2.3.3'

  spec.post_install_message = <<-MSG
    You're upgrading to 0.1.0. Make sure you check the change log to see how your app will be affected!
  MSG

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
