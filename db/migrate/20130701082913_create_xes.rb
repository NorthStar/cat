class CreateXes < ActiveRecord::Migration
  def change
    create_table :xes do |t|
      t.string :name
      t.string :lat
      t.string :lnt
      t.text :address
      t.string :zip

      t.timestamps
    end
  end
end
