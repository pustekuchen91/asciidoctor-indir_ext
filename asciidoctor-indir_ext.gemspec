
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "asciidoctor/indir_ext/version"

Gem::Specification.new do |spec|
  spec.name          = "asciidoctor-indir-extension"
  spec.version       = Asciidoctor::IndirExt::VERSION
  spec.authors       = ["pustekuchen91"]
  spec.email         = ["pustekuchen91@users.noreply.github.com"]

  spec.summary       = "An Asciidoctor extension that adds a variable `indir`, which always points to the directory of the currently included asciidoc file"
  spec.description   = %q(This Asciidoctor extension exposes a variable `indir`, which holds the path to the directory where the current asciidoc file is located.
    The value of this variable changes to always reflect the location of the current, included subdocument.
    (Note, this is in contrast to the `docfile` variable, which remains the same throughout an entire document).)
  spec.homepage      = "https://github.com/pustekuchen91/asciidoctor-indir_ext"
  spec.license       = "MIT"

  spec.metadata = {
    'bug_tracker_uri' => 'https://github.com/pustekuchen91/asciidoctor-indir_ext/issues',
    'source_code_uri' => 'https://github.com/pustekuchen91/asciidoctor-indir_ext'
  }

  # Specify which files should be added to the gem when it is released.
  spec.files         = Dir['lib/**/*', '*.gemspec', 'LICENSE*', 'README*']
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'asciidoctor', '>= 2.0.20', '< 3.0.0'
  spec.add_runtime_dependency 'concurrent-ruby', '~> 1.2.2'
  spec.add_runtime_dependency 'asciidoctor-include-ext', '~> 0.4.0'

  spec.add_development_dependency 'asciidoctor-pdf', '~> 2.3' # to build a pdf of the example folder
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
