# coding: utf-8

# Name the specs in the custom theme
Gem::Specification.new do |spec|
  spec.name             = "greeny"
  spec.version          = "0.0.1"

  spec.authors          = ["Nico Poblete"]
  spec.email            = ["nlypoblet@gmail.com"]

  spec.summary          = %q{A simple theme for blogs using the color green.}
  spec.description      = "This is a Jekyll theme focusing on the color green. An optional backdrop of size 920x600 or higher can be used as the header image."

  spec.homepage         = "https://boaromayo.github.io/boaromayo.net-portfolio"

  spec.license          = "MIT"

  # Name which files and directories to include on theme startup
  spec.files            = git ls-files -z.split!("\x0").select { |d| d.match(%r{^(assets|_includes|_layouts|_sass|LICENSE|README)}i) }

  # Add dependencies
  spec.add_development_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.15.2"
end
