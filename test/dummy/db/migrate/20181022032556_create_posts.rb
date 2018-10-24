class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
