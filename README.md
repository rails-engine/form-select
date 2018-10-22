# FormSelect

A simple improve for Rails form select helper.

We need use `form.select ::category_id, Category.collect { |record| [record.name, record.id] }` in so many case.

This gem give use a simple way.

## Usage

```rb
gem "form-select"
```

app/model/category.rb

```rb
class Category
  form_select :name, scope: -> { order("name asc") }
  form_select :reverse_name, text_method: :name, scope: -> { order("name desc") }
end

class User
  form_select :login, value_method: :to_param, scope: -> { order("id desc") }
  form_select :email

  def to_param
    login.downcase
  end
end
```

Now you got the helper methods:

```rb
irb> Category.name_options
 => [["Android", 3], ["iOS", 2], ["News", 1]]
irb> Category.reverse_name_options
 => [["News", 1], ["iOS", 2], ["Android", 3]]
irb> User.login_options
 => [["Foo", "foo"], ["Mike", "mike"], ["Jason", "jason"]]
irb> User.email_options
 => [["jason@gmail.com", 10], ["mike@foo.com", 11], ["foo@bar.com", 12]]
```

So you can easy use it in Rails form:

```erb
<%= form_with(model: post, local: true) do |form| %>
  <div class="field">
    <%= form.label :title %>
    <%= form.text_field :title %>
  </div>

  <div class="field">
    <%= form.label :user_id %>
    <%= form.select :user_id, User.email_options %>
  </div>

  <div class="field">
    <%= form.label :category_id %>
    <%= form.select :category_id, Category.name_options %>
  </div>

  <div class="actions">
    <%= form.submit %>
  </div>
<% end %>
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
