desc "Create Set id: 7, 06/09/2019."
task createset7: :environment do
  log = ActiveSupport::Logger.new("log/create_set_7.log")
  start_time = Time.now
  puts "**************************"
  puts "Create Set and Cards id 7:Sample Set"
  puts "**************************"
  # constants
  # find and kill old cluster cards
  # and the cluster's cards. get ready to update scoreclusters if there is a cluster1
  cheatsheet1 = Cheatsheet.where(display_name: "Sample Set").first
  if cheatsheet1
    old_cheatsheet_id = cheatsheet1.id
    puts "old cheatsheet id was: #{old_cheatsheet_id}"
    cheatsheet1.destroy
    # temp_scoreclusters = Scorecluster.where(cluster_id: old_cluster_id)
    # temp_scorecards = Scorecard.where(cluster_id: old_cluster_id)
  end
  # create new cluster, and add cards back to it.
  test_cheatsheet = Cheatsheet.create!(display_name: "Sample Set", image: "css3-dss.png",
                                 description: "A sampling of Cards drawn from CSS selectors Part 1",
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
    {question: "What is an attributes selector?", answer: "a[title] {    \ncolor: green;\n }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Select the anchor tags that have a title attribute.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#10", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select elements by type?", answer: "a { \ncolor: red; }\n\nul { \nmargin-left: 0; }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Target elements by HTML type, such as DIV, FORMSET, A", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#5", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "What is the descendant selector?", answer: "li a {\n  text-decoration: none;\n}", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Two fully specified selectors, separated by a single space means select all of the latter that belong to the former. `nav .navbar-brand` would select all the elements with a class of navbar-brand under html elements nav.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#4", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select element that has value anywhere in a specified attribute?", answer: "a[href*=\"dev\"] {   \ncolor: #1f6053; /* DevShortcuts green */ }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Selects those A elements that have \"dev\" somewhere in the specified attribute.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#12", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select all children of a specific kind of an element?", answer: "div#container > ul {\n  border: 1px solid black;\n}\n\n<div id=\"container\">\n   <ul>\n      <li> List Item\n        <ul>\n           <li> Child </li>\n        </ul>\n      </li>\n      <li> List Item </li>\n      <li> List Item </li>\n      <li> List Item </li>\n   </ul>\n</div>", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "A selector of `#container > ul` will only target the uls which are direct children of the div with an id of container. It will not target, for instance, a ul that is a child of a different section.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#8", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select an element that has a specified data attribute?", answer: "a[data-filetype=\"image\"] {    \ncolor: red;\u2028 }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "A good way to find general elements that can have multiple values for an attribute.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#15", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "How to target A elements that have an href value of \"http\"?", answer: "a[href^=\"http\"] {    \nbackground: url(path/to/external/icon.png) no-repeat;\u2028padding-left: 10px;\u2028 }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Finds elements that have the specified value at the beginning the attribute.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#13", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select an element with a data attribute containing a specified value?", answer: "/* Target data-info attr that contains the value \"external\" */ \na[data-info~=\"external\"] {    \ncolor: red; }   \n\n/* Or which contain the value \"image\" */\na[data-info~=\"image\"] {   \n  border: 1px solid black;\u2028 }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "In this case, we are targeting A tags that have a data-info attribute of a given value.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#16", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select element with a given value at the end of the href attribute?", answer: "a[href$=\".jpg\"] {    color: red; \u2028}", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "A good way to select elements referencing a specific filetype, like \".jpg\"", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#14", mnemonic: "", gif_url: "", b_color: nil},
    {question: "Select only A tags that have a specific href value?", answer: "a[href=\"https://devshortcuts.com\"] {   \ncolor: #1f6053; /*DevShortcuts green */ }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "Select only A tags with that particular href value.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#11", mnemonic: nil, gif_url: nil, b_color: nil},
    {question: "Select any P elements as long as they follow a UL element?", answer: "ul ~ p {    \ncolor: red;\n }", citation_title: "The 30 CSS Selectors You Must Memorize", citation_url: "https://code.tutsplus.com/tutorials/the-30-css-selectors-you-must-memorize--net-16048", keycaps: "", description: "This selector will select any p elements, as long as they follow a ul.", cheatsheet_id: test_cheatsheet.id, os: "Web", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Sample Set", is_sample: true, interface: 3, notes: "#9", mnemonic: nil, gif_url: nil, b_color: nil},
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
