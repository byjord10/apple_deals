
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "apple_deals/version"

Gem::Specification.new do |spec|
  spec.name          = "apple_deals"
  spec.version       = AppleDeals::VERSION
  spec.authors       = ["'Brianna Jordan'"]
  spec.email         = ["'bryvjordan9@gmail.com'"]

  spec.summary       = %q{Apple Deals will update you with current Apple product online sales. }
  spec.description   = %q{It will give you up to 6 items per week to choose from by selecting a number. Once the numbered item has been selected, more information about the selected item will appear. You can return by typing Apple Deals or exit buy typing exit.}
  spec.homepage      = "https://github.com/byjord10/apple_deals"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/byjord10/apple_deals"
    spec.metadata["changelog_uri"] = "https://github.com/byjord10/apple_deals"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  
  spec.add_dependency "nokogiri"

end
