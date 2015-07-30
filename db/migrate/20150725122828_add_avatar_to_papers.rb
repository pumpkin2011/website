class AddAvatarToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :avatar, :string, null: false, default: 0
  end
end
