class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text :name
      t.text :birth_date
      t.text :birth_location
      t.text :thumb_path

      t.timestamps null: false
    end
  end
end
