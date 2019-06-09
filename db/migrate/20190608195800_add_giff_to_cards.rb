class AddGiffToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :b_color, :string
  end
end
