class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :creator
      t.string :department
      t.text :content

      t.timestamps
    end
  end
end
