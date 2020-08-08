
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "austin_swing_syndicate_dance_classes/version"

Gem::Specification.new do |spec|
  spec.name          = "austin_swing_syndicate_dance_clases"
  spec.version       = AustinSwingSyndicateDanceClasses::VERSION
  spec.authors       = ["'nathanielgcowan'"]
  spec.email         = ["'nathaniel.g.cowan@gmail.com'"]

  spec.summary       = %q{This is my short summary of my gemspec. I am writing one because I am supposed to do so. This is what is written down and what I know to put here.}
  spec.description   = %q{This is the description of It is meant to help people in Austin meet others that want to learn swing dancing.}
  spec.homepage      = "https://github.com/nathanielgcowan/learn-co-sandbox/tree/master/austin_swing_syndicate_dance_classes"
  spec.license       = "MIT"

  # # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "'http://mygemserver.com'"

  #   spec.metadata["homepage_uri"] = spec.homepage
  #   spec.metadata["source_code_uri"] = "http://austinswingsyndicate.org/"
  #   spec.metadata["changelog_uri"] = "http://austinswingsyndicate.org/"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
