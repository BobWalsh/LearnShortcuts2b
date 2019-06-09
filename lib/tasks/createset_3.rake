desc "Create Set id: 3, 06/09/2019."
task createset3: :environment do
  log = ActiveSupport::Logger.new("log/create_set_3.log")
  start_time = Time.now
  puts "**************************"
  puts "Create Set and Cards id 3:Gmail Basic Shortcuts"
  puts "**************************"
  # constants
  # find and kill old cluster cards
  # and the cluster's cards. get ready to update scoreclusters if there is a cluster1
  cheatsheet1 = Cheatsheet.where(display_name: "Gmail Basic Shortcuts").first
  if cheatsheet1
    old_cheatsheet_id = cheatsheet1.id
    puts "old cheatsheet id was: #{old_cheatsheet_id}"
    cheatsheet1.destroy
    # temp_scoreclusters = Scorecluster.where(cluster_id: old_cluster_id)
    # temp_scorecards = Scorecard.where(cluster_id: old_cluster_id)
  end
  # create new cluster, and add cards back to it.
  test_cheatsheet = Cheatsheet.create!(display_name: "Gmail Basic Shortcuts", image: "gmail-dss.png",
                                 description: "The must-know Gmail shortcuts for Developer Happiness.",
                                 level: "Basic", card_count: -1, topic: "Email", os: "")

  # if temp_scoreclusters
  #   puts "Affected Scoreclusters: #{temp_scoreclusters.count}"
  #   puts "Scoreclusters were found, so update from #{old_cluster_id} to #{test_cluster.id}"
  #   temp_scoreclusters.update_all(cluster_id: test_cluster.id)
  # end

  # if temp_scorecards
  #   puts "Affected Scorecards: #{temp_scorecards.count}"
  #   puts "Scorecards were found, so update from #{old_cluster_id} to #{test_cluster.id}"
  #   temp_scorecards.update_all(cluster_id: test_cluster.id)
  # end

  # change cluster_id: x to cluster_id: test_cluster.id
  Card.create!([
    {question: "How do I add a conversation to Tasks?", answer: "shift + t", citation_title: "Keyboard shortcuts for Gmail", citation_url: "https://support.google.com/mail/answer/6594", keycaps: "key_left_shift, key_t", description: "Make a conversation something to keep and act on.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Gmail Basic Shortcuts", is_sample: false, interface: 1, notes: nil, mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Reply to all?", answer: "a", citation_title: "Keyboard shortcuts for Gmail", citation_url: "https://support.google.com/mail/answer/6594", keycaps: "key_a", description: "Not to be confused with Reply!", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Gmail Basic Shortcuts", is_sample: false, interface: 1, notes: nil, mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Mark as Important?", answer: "+ or =", citation_title: "Keyboard shortcuts for Gmail", citation_url: "https://support.google.com/mail/answer/6594", keycaps: "key_equals, or key_shift plus key_equals", description: "Not everything is equally important.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Gmail Basic Shortcuts", is_sample: false, interface: 1, notes: nil, mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Move an email to a lable?", answer: "v", citation_title: "Keyboard shortcuts for Gmail", citation_url: "https://support.google.com/mail/answer/6594", keycaps: "key_v", description: "Move that email.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Gmail Basic Shortcuts", is_sample: false, interface: 1, notes: nil, mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Archive an email?", answer: "e", citation_title: "Keyboard shortcuts for Gmail", citation_url: "https://support.google.com/mail/answer/6594", keycaps: "key_e", description: "think \"easy archive\"", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Gmail Basic Shortcuts", is_sample: false, interface: 1, notes: nil, mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Go to All mail?", answer: "g + a", citation_title: "Keyboard shortcuts for Gmail", citation_url: "https://support.google.com/mail/answer/6594", keycaps: "key_g, then key_a", description: "Go to All mail.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Gmail Basic Shortcuts", is_sample: false, interface: 1, notes: nil, mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "How do you undo what you just did?", answer: "z", citation_title: "Keyboard shortcuts for Gmail", citation_url: "https://support.google.com/mail/answer/6594", keycaps: "key_z", description: "Handy to know.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Gmail Basic Shortcuts", is_sample: false, interface: 1, notes: nil, mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Start searching your email?", answer: "/", citation_title: "Keyboard shortcuts for Gmail", citation_url: "https://support.google.com/mail/answer/6594", keycaps: "key_forward_slash", description: "Slash to find your hidden emails.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Gmail Basic Shortcuts", is_sample: false, interface: 1, notes: nil, mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "How do I archive a conversation and go to the previous? Or Next?", answer: "] or [", citation_title: "Keyboard shortcuts for Gmail", citation_url: "https://support.google.com/mail/answer/6594", keycaps: "key_right_bracket, or key_left_bracket", description: "Quick power move.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Gmail Basic Shortcuts", is_sample: false, interface: 1, notes: nil, mnemonic: nil, gif_url: nil, b_color: nil},
  ])

  # end
  end_time = Time.now
  duration = (start_time - end_time) / 1.minute
  puts "**************************"
  puts "Task finished at #{end_time} and took #{duration} minutes."
  puts "**************************"
  log.info "Task finished at #{end_time} and took #{duration} minutes."
  log.close
end
