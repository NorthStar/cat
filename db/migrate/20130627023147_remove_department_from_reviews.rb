class RemoveDepartmentFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :department, :string
  end
end
