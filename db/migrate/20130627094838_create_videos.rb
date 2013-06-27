class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :intro
      t.string :img
      t.string :url
      t.references :department

      t.timestamps
    end
    add_index :videos, :department_id
  end
end
