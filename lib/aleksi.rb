require 'compass/import-once/activate'
# Require additional compass plugins here
require 'SassyCast'
require 'sassy-math'
require 'SassyStrings'
require 'SassyLists'
require 'sassy-maps'

# Extension Paths
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
stylesheets_path = File.join(extension_path, 'stylesheets')

# Register Extension
if (defined? Compass)
    # Register as a Compass extension
    Compass::Frameworks.register('aleksi', :path => extension_path)
else
    # Compass not found, register on the Sass path via the environment.
    if ENV.has_key?("SASS_PATH")
        ENV["SASS_PATH"] = ENV["SASS_PATH"] + File::PATH_SEPARATOR + stylesheets_path
    else
        ENV["SASS_PATH"] = stylesheets_path
    end
end

# Version is a number. If a version contains alphas, it will be created as a prerelease version
# Date is in the form of YYYY-MM-DD
module Aleksi
    VERSION = "0.1.0"
    DATE = "2015-03-15"
end