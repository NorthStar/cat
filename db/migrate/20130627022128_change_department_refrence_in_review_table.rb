class ChangeDepartmentRefrenceInReviewTable < ActiveRecord::Migration
  def change
  	change_table :reviews do |t|
  		t.references :department
	end
	add_index :reviews, :department_id
  end
end
