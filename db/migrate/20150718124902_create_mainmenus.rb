class CreateMainmenus < ActiveRecord::Migration
  def change
    create_table :mainmenus do |t|
      t.text   :content,      null: false
      t.string :main_pic_url, null: false

      t.timestamps null: false
    end
  end
end
