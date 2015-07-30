class AddRightToMembers < ActiveRecord::Migration
  def change
  	add_column :members, :right, :integer
  end
end
