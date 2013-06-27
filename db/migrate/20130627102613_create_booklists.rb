class CreateBooklists < ActiveRecord::Migration
  def change
    create_table :booklists do |t|
      t.string :title
      t.string :creator
      t.text :intro
      t.references :department

      t.timestamps
    end
    add_index :booklists, :department_id
  end
end
