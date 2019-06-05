class AddInterfaceToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :interface, :integer
  end
end
