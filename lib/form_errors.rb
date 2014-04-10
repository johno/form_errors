require "form_errors/version"
require "form_errors/view_helpers"

module FormErrors
  include ViewHelpers
end

defined?(Rails::Railtie) ?
  require('form_errors/railtie') :
  raise('form_errors requires Rails::Railtie')
