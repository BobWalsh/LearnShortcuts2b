# == Schema Information
#
# Table name: cheatsheets
#
#  id           :bigint           not null, primary key
#  display_name :string
#  description  :string
#  os           :string
#  image        :string
#  card_count   :integer
#  level        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  topic        :string
#

class Cheatsheet < ApplicationRecord
end
