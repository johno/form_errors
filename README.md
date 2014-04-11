# FormErrors

Clean up form error reporting in Rails with a nice little view helper.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'form_errors'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install form_errors
```

## Usage

To display errors in your Rails form, you can call the `display_errors` view helper and pass along the object.

```html+erb
<%= simple_form_for(@product, html: { class: "form-horizontal" }) do |f| %>
  <%= display_errors(@product) %>
  <!-- ... -->
<% end %>
```

If you'd like to customize the error string within the `h2` tag, you can add a second parameter.

```html+erb
<%= simple_form_for(@product, html: { class: "form-horizontal" }) do |f| %>
  <%= display_errors(@product, "We were unable to save that product.") %>
  <!-- ... -->
<% end %>
```

The helper applies the `alert`, `alert-danger`, and `alert-dismissable` classes to the wrapper element. It also includes a `data-dismiss`. If you're using bootstrap, it ties in perfectly.

```html
<div class="alert alert-danger alert-dismissable">
  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
  <h2>
    We were unable to save that product.
  </h2>
  <ul>
    <li>Name can't be blank</li>
    <li>Product definition can't be blank</li>
  </ul>
</div>
```

## Contributing

1. Fork it ( http://github.com/johnotander/form_errors/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
