require 'form_errors'

module FormErrors
  class Railtie < Rails::Railtie
    initializer 'form_errors' do |app|
      ActionView::Base.send :include, FormErrors
      require 'form_errors/view_helpers'
    end
    require 'form_errors/view_helpers'
  end
end