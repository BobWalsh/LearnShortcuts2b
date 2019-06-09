desc "Create Set id: 1, 06/09/2019."
task createset1: :environment do
  log = ActiveSupport::Logger.new("log/create_set_1.log")
  start_time = Time.now
  puts "**************************"
  puts "Create Set and Cards id 1:Basic CSS selectors"
  puts "**************************"
  # constants
  # find and kill old cluster cards
  # and the cluster's cards. get ready to update scoreclusters if there is a cluster1
  cheatsheet1 = Cheatsheet.where(display_name: "heroku ").first
  if cheatsheet1
    old_cheatsheet_id = cheatsheet1.id
    puts "old cheatsheet id was: #{old_cheatsheet_id}"
    cheatsheet1.destroy
    # temp_scoreclusters = Scorecluster.where(cluster_id: old_cluster_id)
    # temp_scorecards = Scorecard.where(cluster_id: old_cluster_id)
  end
  # create new cluster, and add cards back to it.
  test_cheatsheet = Cheatsheet.create!(display_name: "Basic CSS selectors Part 1", image: "css3-dss.png",
                                 description: "The basic commands you need to use CSS. (Part 1)",
                                 level: "Basic", card_count: -1, topic: "CSS", os: "")

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

  Card.create!([
    {question: "Selector of an ID?", answer: "#A", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Select just HTML elements with that ID (should only be one element - giving different elements the same ID is a Bad Idea.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS selectors Part 1", is_sample: false, interface: 3, notes: "#2", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select an element that is an immediate sibling of another element?", answer: "X + Y", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "For example, `ul + p` all of the `<p>` elements immediately after an unordered list.q", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS selectors Part 1", is_sample: false, interface: 3, notes: "#7", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "What is the basic class selector?", answer: ".x", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "select all members of a given class.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS selectors Part 1", is_sample: false, interface: 3, notes: "#3", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Selector for everything?", answer: "*", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Selects everything; good for resetting all elements but not much else.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS selectors Part 1", is_sample: false, interface: 0, notes: "#1", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Selector for just links that have been visited, or those not yet visited?", answer: "a:link { \ncolor: red; }\n\na:visted { \ncolor: purple; }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: ":visited is pseudo-class to target all anchors tags already clicked on; :link are those tags yet clicked on.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS selectors Part 1", is_sample: false, interface: 3, notes: "#6", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select elements that do not have a particular class or are not a particular element?", answer: "*:not(p) {   \ncolor: green; }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "This selects everything but p elements.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS selectors Part 1", is_sample: false, interface: 3, notes: "#20", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "How to target the pseudo class hover?", answer: "div:hover {   \u2028background: #e3e3e3; }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: ":hover, :after, :before are pseudo classes, just as :link and :active are A element pseudo classes.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS selectors Part 1", is_sample: false, interface: 3, notes: "#19", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Target elements that have no siblings of the same type?", answer: "/* Selects each <p>, but only if it is the */ \n/* only <p> element inside its parent */ \np:only-of-type {   background-color: lime; }", citation_title: ":only-of-type", citation_url: "https://developer.mozilla.org/en-US/docs/Web/CSS/:only-of-type", keycaps: "", description: "This selector would targets one-of-a kind children of a given element.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS selectors Part 1", is_sample: false, interface: 1, notes: "#29", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Target the first of a given kind of sibling?", answer: "ul:first-of-type {    \nfont-weight: bold; }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "This would find the first ul on a page.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS selectors Part 1", is_sample: false, interface: 3, notes: "#30", mnemonic: nil, gif_url: nil, b_color: nil},
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
