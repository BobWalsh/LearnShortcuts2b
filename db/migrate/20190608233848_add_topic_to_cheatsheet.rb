class AddTopicToCheatsheet < ActiveRecord::Migration[5.2]
  def change
    add_column :cheatsheets, :topic, :string
  end
end
