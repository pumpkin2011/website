class CreateMRoles < ActiveRecord::Migration
  def change
    create_table :m_roles do |t|
      t.integer :role_no, null: false
      t.string  :role,    null: false

      t.timestamps null: false
    end
  end
end
