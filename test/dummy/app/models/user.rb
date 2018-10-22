class User < ApplicationRecord
  form_select :login, field: [:login, :to_param], scope: -> { order("id desc") }
  form_select :email
  form_select :email_value, field: :email

  def to_param
    login.downcase
  end
end
