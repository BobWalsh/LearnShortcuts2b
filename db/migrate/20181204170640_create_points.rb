class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :ds_points do |t|
      t.integer :user_id, foreign_key: true
      t.integer :point_type
      t.integer :point_value
      t.string :source_type
      t.integer :source_id
      t.datetime :award_date

      t.timestamps
    end
  end
end
