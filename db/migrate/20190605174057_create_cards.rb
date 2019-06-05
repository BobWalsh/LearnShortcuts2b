class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.string :citation_title
      t.string :citation_url
      t.string :keycaps
      t.integer :cheatsheet_id
      t.integer :answer_type
      t.text :answer_data
      t.string :cheatsheet_display_name
      t.boolean :is_sample
      t.string :notes
      t.string :mnemonic
      t.string :gif_url
      t.string :os
      


      t.timestamps
    end
  end
end
