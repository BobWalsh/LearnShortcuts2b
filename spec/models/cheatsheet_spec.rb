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
#

require 'rails_helper'

RSpec.describe Cheatsheet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
