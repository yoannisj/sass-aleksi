# Require additional compass plugins here
require 'sass-aleski/version'
require 'sass'

# Extension Paths
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
stylesheets_path = File.join(extension_path, 'stylesheets')

# Register Extension
if (defined? Compass)
    # Register as a Compass extension
    Compass::Frameworks.register('sass-aleksi', :path => extension_path)
else
    # Compass not found, register on the Sass path via the environment.
    if ENV.has_key?("SASS_PATH")
        ENV["SASS_PATH"] = ENV["SASS_PATH"] + File::PATH_SEPARATOR + stylesheets_path
    else
        ENV["SASS_PATH"] = stylesheets_path
    end
end

module SassAleksi
end