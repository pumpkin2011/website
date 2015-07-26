class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :title,      null: false, default: ''
      t.text :description
      t.integer :def_flg,   null: false, default: 0

      t.timestamps null: false
    end
  end
end
