class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text    :name
      t.text    :thumb_path
      t.text    :birth_location
      t.integer :birthday_timestamp
      
      t.timestamps null: false
    end
  end
end
