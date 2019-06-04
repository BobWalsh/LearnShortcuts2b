class CreateCheatsheets < ActiveRecord::Migration[5.2]
  def change
    create_table :cheatsheets do |t|
      t.string :display_name
      t.string :description
      t.string :os
      t.string :image
      t.integer :card_count
      t.string :level
      t.timestamps
    end
  end
end
