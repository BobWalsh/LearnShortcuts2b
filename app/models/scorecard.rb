# == Schema Information
#
# Table name: scorecards
#
#  id                 :bigint           not null, primary key
#  current_score      :integer          default(0)
#  user_id            :integer
#  guest_id           :string
#  card_id            :integer
#  current_score_date :datetime
#  old_score_1        :integer
#  old_score_2        :integer
#  old_score_3        :integer
#  old_score_4        :integer
#  old_score_5        :integer
#  old_score_1_date   :datetime
#  old_score_2_date   :datetime
#  old_score_3_date   :datetime
#  old_score_4_date   :datetime
#  old_score_5_date   :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Scorecard < ApplicationRecord
  belongs_to :user
  belongs_to :card
  # card color coding:
  scope :redcards, -> { where(current_score: 1) }
  scope :yellowcards, -> { where(current_score: 2) }
  scope :greencards, -> { where(current_score: 3) }
  scope :whitecards, -> { where(current_score: 0) }

  scope :by_cluster, -> { order(cluster_id: :ASC) }
  # def self.test
  #   for x in 0..70 do
  #     if self.where(user_id: x)
  #       self.create_sample(x)
  #     end
  #   end
  # end

  def self.create_sample(userid)
    # puts "USER ID: #{userid}"

    # for x in 0..100 do
    #  actual #
    universe = self.where(user_id: userid, archive: [false, nil])
    actual_y = universe.yellowcards.count
    actual_r = universe.redcards.count
    actual_w = universe.whitecards.count
    actual_g = universe.greencards.count
    # puts universe
    # puts actual_y
    # puts actual_r
    # puts actual_w
    # puts actual_g
    # actual_y = rand(0..30)
    # actual_r = rand(0..30)
    # actual_w = rand(0..30)
    # actual_g = rand(0..30)

    # RULES:
    # 0. if actual <= 6 results are actual.randomized
    # 1. up to 5 yellow
    # 2. up to 5 red
    # 3. up to 5 white
    # 4. at least 1, but up to 6 if there are actual and other tests are done and sum < 6
    # CASES:
    # actual = [0, 0, 4, 13]  #1 pass
    # actual = [5, 5, 5, 5 ]  #2 pass
    # actual = [13,3,1,8]     #3 pass
    # actual = [1,2,3,4]      #4 pass
    # actual = [4,3,2,1]      #5 pass
    # actual = [1,1,2,3]      #6 pass
    # actual = [10,0,3,1]     #7 pass
    # actual = [0,19,19,0]    #8 pass
    # actual = [8,4,4,0]      #9 pass
    # actual = [0,10,20,3]    #10 pass
    # actual = [0,0,0,0]      #11 pass
    # actual = [6,6,6,6]      #12 pass
    # actual = [19,0,19,0]    #13 pass
    # actual = [0,19,0,19]    #14 pass

    # puts "START RUN #{x}:"
    goal = [0, 0, 0, 0]
    actual = Array[actual_y, actual_r, actual_w, actual_g]
    oldactual = Array[actual_y, actual_r, actual_w, actual_g]

    counter = 0
    if actual.reduce(0, :+) <= 6
      puts "** 6 OR LESS CARDS"
      goal = actual
    else
      while goal.reduce(0, :+) < 7
        counter = counter + 1
        if actual[3] >= 1 and goal[3] <= 6 and goal.reduce(0, :+) < 6
          goal[3] = goal[3] + 1
          actual[3] = actual[3] - 1
        end
        while actual[0] > 0 and goal[0] <= 6 and goal.reduce(0, :+) < 5
          goal[0] = goal[0] + 1
          actual[0] = actual[0] - 1
        end
        while actual[2] > 0 and goal[2] <= 6 and goal.reduce(0, :+) < 6
          goal[2] = goal[2] + 1
          actual[2] = actual[2] - 1
        end
        while actual[1] > 0 and goal[1] <= 6 and goal.reduce(0, :+) < 6
          goal[1] = goal[1] + 1
          actual[1] = actual[1] - 1
        end
        break if goal.reduce(0, :+) >= 6
        break if counter > 30
      end
    end

    # final = [0,0,0,0]
    puts "ACTUAL WAS: #{oldactual.to_s}"
    puts "GOAL IS:   #{goal.to_s} an sum is #{goal.reduce(0, :+).to_s}."
    # puts ' '
    final = [goal[0], goal[1], goal[2], goal[3]]
    puts "final results are YRWG: #{final.to_s}"
    # puts "_______"
    # puts "_______"
    # # universe.pluck(:id)
    final
  end
  # end

end
