class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
end
