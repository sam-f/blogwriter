class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title, limit: 140, null: false, index: {unique: true}
      t.datetime :post_at, null: false
      t.timestamps
    end
  end
end
