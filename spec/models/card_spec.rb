# == Schema Information
#
# Table name: cards
#
#  id                      :bigint           not null, primary key
#  question                :string
#  answer                  :string
#  citation_title          :string
#  citation_url            :string
#  keycaps                 :string
#  cheatsheet_id           :integer
#  answer_type             :integer
#  answer_data             :text
#  cheatsheet_display_name :string
#  is_sample               :boolean
#  notes                   :string
#  mnemonic                :string
#  gif_url                 :string
#  os                      :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  interface               :integer
#  description             :string
#  b_color                 :string
#

require 'rails_helper'

RSpec.describe Card, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
