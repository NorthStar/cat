class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :review

      t.timestamps
    end
    add_index :comments, :review_id
  end
end
