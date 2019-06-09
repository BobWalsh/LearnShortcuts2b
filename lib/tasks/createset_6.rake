desc "Create Set id: 6, 06/09/2019."
task createset6: :environment do
  log = ActiveSupport::Logger.new("log/create_set_6.log")
  start_time = Time.now
  puts "**************************"
  puts "Create Set and Cards id 6:Basic CSS selectors Part 2"
  puts "**************************"
  # constants
  # find and kill old cluster cards
  # and the cluster's cards. get ready to update scoreclusters if there is a cluster1
  cheatsheet1 = Cheatsheet.where(display_name: "Basic CSS Selectors Part 2").first
  if cheatsheet1
    old_cheatsheet_id = cheatsheet1.id
    puts "old cheatsheet id was: #{old_cheatsheet_id}"
    cheatsheet1.destroy
    # temp_scoreclusters = Scorecluster.where(cluster_id: old_cluster_id)
    # temp_scorecards = Scorecard.where(cluster_id: old_cluster_id)
  end
  # create new cluster, and add cards back to it.
  test_cheatsheet = Cheatsheet.create!(display_name: "Basic CSS Selectors Part 2", image: "css3-dss.png",
                                 description: "A sampling of other Sets, specifically CSS selectors Part 1 and Gmail Basic Shortcuts",
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

  # change cluster_id: x to cluster_id: test_cluster.id
  Card.create!([
    {question: "Target the first child of the element's parent?", answer: "1  ul li:first-child {    \n2      border-top: none;\n3   }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Target the first li in each ul and give it a border-top:none styling.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS Selectors Part 2", is_sample: false, interface: 3, notes: "#26", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select the specified element, counting position from last to first?", answer: "1  ul:nth-last-of-type(3) {    \n2     border: 1px solid black;\n3   }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "This selector would add a border to the ul element third to the last of ul elements", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS Selectors Part 2", is_sample: false, interface: 3, notes: "#25", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Target a pseudo element, such as the first line of p tags?", answer: "1  p::first-line {    \n2    font-weight: bold;\n3    font-size: 1.2em;\n4  }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Note the :: when targeting pseudo elements. A single : worked on elements in CSS 1 and 2, but for elements introduced in CSS 3 you need ::. ", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS Selectors Part 2", is_sample: false, interface: 3, notes: "#21", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "How to target the pseudo class after?", answer: "1   .clearfix:after {     \n2     content: \"\";     \n3     display: block;     \n4     clear: both;     \n5     visibility: hidden;     \n6     font-size: 0;     \n7     height: 0;    \n8   }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "This hack uses the :after pseudo class to append a space after the element.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS Selectors Part 2", is_sample: false, interface: 3, notes: "#18", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select the nth child of a parent element?", answer: "1  li:nth-child(3) {    \n2    color: red; \n3  }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Note that this is not 0 based:  If you wish to target the second list item, use li:nth-child(2).", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS Selectors Part 2", is_sample: false, interface: 3, notes: "#22", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Target the only child of a particular parent?", answer: "1  div p:only-child {    \n2     color: red;\n3   }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Targets the single child of a parent. In this case, it would target p elements that are the only child of div elements?", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS Selectors Part 2", is_sample: false, interface: 3, notes: "#28", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select from a number of elements one specific element based on position?", answer: "1  ul:nth-of-type(3) {    \n2    border: 1px solid black; \n3  }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "In this selector, only the third ul will have a border around it.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS Selectors Part 2", is_sample: false, interface: 3, notes: "#24", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Target the last child of a particular parent?", answer: "1   ul > li:last-child {    \n2      color: green;\n3   }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "The opposite of first-child, last-child will target the last item of the element's parent.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS Selectors Part 2", is_sample: false, interface: 3, notes: "#27", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select from the last child of a parent up?", answer: "1  li:nth-last-child(2) {    \n2    color: red; \n3  }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "This will select the second-to-last element.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS Selectors Part 2", is_sample: false, interface: 3, notes: "#23", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Target a pseudo class?", answer: "1   input[type=radio]:checked {\n2     border: 1px solid black;\n3   }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "This pseudo class will only target a user interface element that has been checked - like a radio button, or checkbox.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic CSS Selectors Part 2", is_sample: false, interface: 3, notes: "#17", mnemonic: nil, gif_url: nil, b_color: nil},
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
