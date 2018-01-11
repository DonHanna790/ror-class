class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :restaurant
      t.text :review

      t.timestamps
    end
  end
end
