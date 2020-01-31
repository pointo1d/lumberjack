
#require_relative "lib/logger_wrapper/version"

Gem::Specification.new do |spec|
  spec.name          = "logger_wrapper"
  spec.version       = '0.2.0'
  spec.authors       = ['Dave Pointon FIAP MBCS']
  spec.email         = ['pointo1d at gmail dot com']

  spec.summary       = %q{Wrapper for the core Logger class}
  spec.description   = %q{A WIP wrapper for Core::Logger}
  #spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler" #,  "~> 1.16"
  spec.add_development_dependency "rake" #,     "~> 10.0"
  spec.add_development_dependency "rdoc" #,     "~> 6.0"
  spec.add_development_dependency "rspec" #,    "~> 3.0"
end