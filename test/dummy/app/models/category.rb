class Category < ApplicationRecord
  form_select :name, scope: -> { order("name asc") }
  form_select :reverse_name, text_method: :name, scope: -> { order("name desc") }
end
