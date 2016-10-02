$:.push File.expand_path('../lib', __FILE__)
# Replace extension with the name of your extension's .rb file
require 'sass-aleksi/version'

Gem::Specification.new do |s|
  # Release Specific Information
  #  Replace Extension with the name you used in your extension.rb
  #   in the module with version and date.
  s.version = SassAleksi::VERSION
  s.date = SassAleksi::DATE

  # Gem Details
  # Replace "extension" with the name of your extension
  s.name = "sass-aleksi"
  # Description of your extension
  s.description = %q{A collection of Sass helper functions and mixins.}
  # A summary of your Compass extension. Should be different than Description
  s.summary = %q{A collection of Sass helper functions and mixins. Bundles other libraries and provides its own functions and mixins on top.}
  # The names of the author(s) of the extension.
  # If more than one author, comma separate inside of the brackets
  s.authors = ["Yoannis Jamar"]
  # The email address(es) of the author(s)
  # If more than one author, comma separate inside of the brackets
  s.email = ["yoannis.j@gmail.com"]
  # URL of the extension
  s.homepage = "https://github.com/yoannisj/sass-aleksi"
  # License Name
  s.licenses = ['MIT']

  # Gem Files
  # These are the files to be included in your Compass extension.
  # Uncomment those that you use.

  # License File
  s.files = ["LICENSE"]

  # README File
  s.files = ["README.md"]

  # CHANGELOG File
  # s.files += ["CHANGELOG.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")

  # Sass Files
  s.files += Dir.glob("stylesheets/**/*.*")

  # Template Files
  # s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  # Versions of Ruby and Rubygems you require
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  # Gem names and versions that are required for your Compass extension.
  # These are Gem dependencies, not Compass dependencies. Including gems
  #  here will make sure the relevant gem and version are installed on the
  #  user's system when installing your gem.
  s.add_dependency("sass",                ["~> 3.3"])
  s.add_dependency("compass-import-once", ["~> 1.0.5"])
  s.add_dependency("SassyLists",          ["~> 2.2"])
  s.add_dependency("sassy-maps",          ["~> 0.4"])
  s.add_development_dependency("true",    ["~> 2.1.3"])
end