class RemoveMainPcUrlAddDisFlgToMainmenus < ActiveRecord::Migration
  def change
  	remove_column :mainmenus, :main_pic_url
  	add_column    :mainmenus, :dis_flg, :integer, null: false, default: 1
  end
end

