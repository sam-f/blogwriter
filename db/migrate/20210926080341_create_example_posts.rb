class CreateExamplePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :example_posts do |t|
      t.references :user, null: false, index: true, foreign_key: {on_delete: :cascade}
      t.string :title, limit: 140
      t.text :content
      t.timestamps
    end
  end
end
