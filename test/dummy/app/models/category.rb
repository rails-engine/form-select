class Category < ApplicationRecord
  form_select :name, scope: -> { order("name asc") }
  form_select :reverse_name, field: [:name, :id], scope: -> { order("name desc") }
end
