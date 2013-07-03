class RemoveTableBook < ActiveRecord::Migration
  def down
  	drop_table :books
  end
end
