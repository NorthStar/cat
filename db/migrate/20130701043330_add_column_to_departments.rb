class AddColumnToDepartments < ActiveRecord::Migration
  def change
  	add_column :departments, :coverUrl, :string
  end
end
