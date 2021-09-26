class AddReferenceToUserInPosts < ActiveRecord::Migration[6.1]
  def change
    change_table :posts do |t|
      t.references :user, null: false, index: true, foreign_key: {on_delete: :cascade}
    end
  end
end
