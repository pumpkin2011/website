class UpdateRightToMRight < ActiveRecord::Migration
  def change
  	rename_column  :members, :right, :m_right
  end
end
