class CreateScorecards < ActiveRecord::Migration[5.2]
  def change
    create_table :scorecards do |t|
      t.integer :current_score, default: 0
      t.integer :user_id
      t.string :guest_id
      t.integer :card_id
      t.datetime :current_score_date
      t.integer :old_score_1
      t.integer :old_score_2
      t.integer :old_score_3
      t.integer :old_score_4
      t.integer :old_score_5
      t.datetime :old_score_1_date
      t.datetime :old_score_2_date
      t.datetime :old_score_3_date
      t.datetime :old_score_4_date
      t.datetime :old_score_5_date
      t.timestamps
    end
  end
end
