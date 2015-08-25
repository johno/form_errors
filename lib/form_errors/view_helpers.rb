module FormErrors
  module ViewHelpers
    def display_errors(object, error_string = nil, html = {})
      return unless object && object.errors.any?

      <<-HTML
        <div class="alert alert-danger alert-dismissable">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          <h2 class="#{ html.error_string_class }">
            #{ get_error_string(error_string, object) }
          </h2>
          <ul class="#{ html.error_list_class }">
            #{ object.errors.full_messages.map do |msg|
                 "<li class=\"#{ html.error_list_item_class }\">#{ msg }</li>"
               end.join }
          </ul>
        </div>
      HTML
      .html_safe
    end

    private

      def get_error_string(error_string, object)
        error_string || "#{ pluralize(object.errors.count, "error") } "\
                        "prohibited this #{ object.class.name.underscore.humanize.downcase } "\
                        "from being saved"
      end
  end
end
