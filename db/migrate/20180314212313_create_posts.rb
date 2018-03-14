class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :text
      t.string :image
      t.string :likes
      t.string :dislikes

      t.timestamps
    end
  end
end
