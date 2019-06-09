class CreateWeeklyReports < ActiveRecord::Migration[5.2]
  def change
    create_table :weekly_reports do |t|
      t.integer :report_id
      t.integer :user_id
      t.datetime :week_ending
      t.integer :reviewed_card_count
      t.integer :green_cards
      t.text :direction
      t.integer :points_earned
      t.text :direction2
      t.text :didwell
      t.string :first_item_name
      t.text :first_item_text
      t.string :second_item_name
      t.text :second_item_text
      t.boolean :report_sent
      t.timestamps
    end
    add_index :weekly_reports, :user_id,                unique: false
    add_index :weekly_reports, :report_id, unique: false
  end
end
