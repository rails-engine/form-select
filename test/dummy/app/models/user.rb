class User < ApplicationRecord
  form_select :login, field: [:login, :login_downcase], scope: -> { order("id desc") }
  form_select :email
  form_select :email_value, field: :email

  def login_downcase
    login.downcase
  end
end
