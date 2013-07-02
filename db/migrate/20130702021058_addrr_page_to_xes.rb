class AddrrPageToXes < ActiveRecord::Migration
  def change
    add_column :xes, :rrPage, :string
  end
end
