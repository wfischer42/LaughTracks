class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :title
      t.text :thumb_path
      t.integer :run_time

      t.timestamps null: false
    end
  end
end
