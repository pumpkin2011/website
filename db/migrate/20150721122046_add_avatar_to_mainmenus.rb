class AddAvatarToMainmenus < ActiveRecord::Migration
  def change
    add_column :mainmenus, :avatar, :string
  end
end
