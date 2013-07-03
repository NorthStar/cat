class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :author
      t.string :publisher
      t.string :coverUrl
      t.string :link
      t.text :summary

      t.timestamps
    end
  end
end
