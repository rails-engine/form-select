class User < ApplicationRecord
  form_select :login, value_method: :to_param, scope: -> { order("id desc") }
  form_select :email

  def to_param
    login.downcase
  end
end
