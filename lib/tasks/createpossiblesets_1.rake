desc "Create Set id: 1, 02/09/2019."
task createpossiblesets1: :environment do
  log = ActiveSupport::Logger.new("log/create_possible_set_1.log")
  start_time = Time.now
  puts "**************************"
  puts "Create Possible Sets: 01 initial load"
  puts "**************************"
  # constants
  # create a new featuredset, for each old featuredset, if there is an update (same display_name, is_current = true) update any featured votes. then delete the old featuredset.
  # and the cluster's cards. get ready to update scoreclusters if there is a cluster1
  # create the new sets
  
  Featuredset.create!([
    { display_name: "Chrome Developer Tools", set_description: "Mac Version 72.0 (March, 2019) basic shortcuts and commands", set_level: "Basic", os: "Mac", topic: "Chorme", is_current: true },
    { display_name: "Firefox Developer Tools", set_description: "Shortcuts and commands for this popular Web Browser", set_level: "Basic", os: "Mac", topic: "Firefox", is_current: true },
    { display_name: "Core Git Commands", set_description: "The core Git commands you need to know to clone, merge and work with project repos and branches.", set_level: "Basic", os: "Linux", topic: "Git", is_current: true },
    { display_name: "The Devise Gem", set_description: "What core concepts do you need to know to use the Devise Gem in Rails 5.2 and beyond? This set will send you hours of Googling the right SO answer.", set_level: "Intermediate", os: "Linux", topic: "Rails", is_current: true },
    { display_name: "Getting around in Sketch", set_description: "So what commands do you as a developer need to know to work with Sketch files? This set is for you!", set_level: "Intermediate", os: "Mac", topic: "Sketch", is_current: true },
  ])

  # featured_sets_old = Featuredset.where(is_current: true)

  # featured_sets_old.each do |fso|
  #   old_featured_votes = Featuredvote.where(:featuredset_id: fso.id).all
  #   if old_featured_votes
  #     old_featured_votes.update_all(featuredset_id: )

  # #   datetime = DateTime.now  => Sun, 26 Oct 2014 21:00:00

  # datetime.today?

  #   new
  #   featured_sets_present = Featuredset.all

  #   hasvotes = false
  #   featured_sets_present.each do |fs|
  #     # are their any votes for it?
  #     old votes = FeaturedVote.where(featuredset_id: fs.id).all
  #     if old_votes
  #       old_votes.update_all(featuredset_id: user_id)

  #   end

  #   if posssets
  #     old_posssets_id = posssets1.id
  #     puts "old posssets id was: #{old_posssets_id}"
  #     posssets1.destroy
  #     temp_posssetsvotes = FeaturedVote.where(posssets_id: old_posssets_id)
  #     temp_scorecards = Scorecard.where(posssets_id: old_posssets_id)
  #   end
  #   # create new posssets, and add cards back to it.
  #   test_posssets = posssets.create!(display_name: "Basic CSS selectors Part 1", image: "css3-dss.png",
  #                                    posssets_description: "The basic commands you need to use the bash shell on mac OS and Linux boxes. (Part 1)",
  #                                    posssets_level: "Basic", posssets_cardcount: -1, topic: "CSS", os: "")

  #   if temp_scoreposssetss
  #     puts "Affected Scoreposssetss: #{temp_scoreposssetss.count}"
  #     puts "Scoreposssetss were found, so update from #{old_posssets_id} to #{test_posssets.id}"
  #     temp_scoreposssetss.update_all(posssets_id: test_posssets.id)
  #   end

  #   if temp_scorecards
  #     puts "Affected Scorecards: #{temp_scorecards.count}"
  #     puts "Scorecards were found, so update from #{old_posssets_id} to #{test_posssets.id}"
  #     temp_scorecards.update_all(posssets_id: test_cluster.id)
  #   end

  # end
  end_time = Time.now
  duration = (start_time - end_time) / 1.minute
  puts "**************************"
  puts "Task finished at #{end_time} and took #{duration} minutes."
  puts "**************************"
  log.info "Task finished at #{end_time} and took #{duration} minutes."
  log.close
end
