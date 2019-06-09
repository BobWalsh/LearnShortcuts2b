desc "Create Set id: 9, 06/08/2019."
task createset8: :environment do
  log = ActiveSupport::Logger.new("log/create_set_8.log")
  start_time = Time.now
  puts "**************************"
  puts "Create Set and Cards id 8:Basic Bash Commands 1"
  puts "**************************"
  # constants
  # find and kill old cluster cards
  # and the cluster's cards. get ready to update scoreclusters if there is a cluster1
  cheatsheet1 = Cheatsheet.where(display_name: "Basic Bash Commands 1").first
  if cheatsheet1
    old_cheatsheet_id = cheatsheet1.id
    puts "old cluster id was: #{old_cheatsheet_id}"
    cheatsheet1.destroy
    # temp_scoreclusters = Scorecluster.where(cluster_id: old_cluster_id)
    # temp_scorecards = Scorecard.where(cluster_id: old_cluster_id)
  end
  # create new cluster, and add cards back to it.
  test_cheatsheet = Cheatsheet.create!(display_name: "Basic Bash Commands 1", image: "bash-dss.png",
                                 description: "The basic commands you need to use the bash shell on mac OS and Linux boxes. (Part 1)",
                                 level: "Basic", card_count: -1, topic: "Bash Commands", os: "")
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
  {question: "Run multiple commands, but don't do the second command if the first command fails?", answer: "ls && pwd", citation_title: "101 Bash Commands and Tips for Beginners to Experts", citation_url: "https://dev.to/awwsmm/101-bash-commands-and-tips-for-beginners-to-experts-30je#first-commands", keycaps: "", description: "like ;, can be used multiple times in the same line", cheatsheet_id:  test_cheatsheet.id , os: "Mac OS, Linux", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic Bash Commands 1", is_sample: false, interface: 2, notes: "ls && pwd", mnemonic: nil, gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1551384636/DevShortcuts/dss/ls_and-pwd_1.0.gif", b_color: nil},
  {question: "List the directory, including hidden \".\" files?", answer: "ls -a", citation_title: "101 Bash Commands and Tips for Beginners to Experts", citation_url: "https://dev.to/awwsmm/101-bash-commands-and-tips-for-beginners-to-experts-30je#first-commands", keycaps: "", description: "Combine multiple flags like ls -l -a",  cheatsheet_id:  test_cheatsheet.id, os: "Mac OS, Linux", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic Bash Commands 1", is_sample: false, interface: 2, notes: "ls -a", mnemonic: nil, gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1551386407/DevShortcuts/dss/ls-a-1.0.gif", b_color: nil},
  {question: "Execute two bash commands at the same time?", answer: "ls; pwd", citation_title: "101 Bash Commands and Tips for Beginners to Experts", citation_url: "https://dev.to/awwsmm/101-bash-commands-and-tips-for-beginners-to-experts-30je#first-commands", keycaps: "", description: "You can use multiple \";\" to execute multiple commands.",  cheatsheet_id:  test_cheatsheet.id, os: "Mac OS, Linux", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic Bash Commands 1", is_sample: false, interface: 2, notes: "", mnemonic: nil, gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1550787684/DevShortcuts/dss/ls_pwd_1.0.gif", b_color: nil},
  {question: "How do I get the documentation for any bash command?", answer: "man du", citation_title: "101 Bash Commands and Tips for Beginners to Experts", citation_url: "https://dev.to/awwsmm/101-bash-commands-and-tips-for-beginners-to-experts-30je#first-commands", keycaps: "", description: "man is short for manual - will open the BSD General Commands Manual (on Mac OS) to that command's page. q will make it go away.",  cheatsheet_id:  test_cheatsheet.id, os: "Mac OS, Linux", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic Bash Commands 1", is_sample: false, interface: 2, notes: "man pwd", mnemonic: nil, gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1550780668/DevShortcuts/dss/man_cd_1.2.gif", b_color: nil},
  {question: "How do you change to a different directory?", answer: "cd", citation_title: "101 Bash Commands and Tips for Beginners to Experts", citation_url: "https://dev.to/awwsmm/101-bash-commands-and-tips-for-beginners-to-experts-30je#first-commands", keycaps: "", description: "You can jump multiple directory levels with cd ../.., etc. and cd - will take back to the most recent directory.",  cheatsheet_id:  test_cheatsheet.id, os: "Mac OS, Linux", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic Bash Commands 1", is_sample: false, interface: 2, notes: "cd", mnemonic: nil, gif_url: nil, b_color: nil},
  {question: "List the contents of the current directory (files and/or child directories, etc.)?", answer: "ls ", citation_title: "101 Bash Commands and Tips for Beginners to Experts", citation_url: "https://dev.to/awwsmm/101-bash-commands-and-tips-for-beginners-to-experts-30je#first-commands", keycaps: "", description: "Lists the directory",  cheatsheet_id:  test_cheatsheet.id, os: "Mac OS, Linux", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic Bash Commands 1", is_sample: false, interface: 2, notes: "2 ls", mnemonic: nil, gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1550787201/DevShortcuts/dss/ls_1.0.gif", b_color: nil},
  {question: "Show file details in the current directory?", answer: "ls -l ", citation_title: "101 Bash Commands and Tips for Beginners to Experts", citation_url: "https://dev.to/awwsmm/101-bash-commands-and-tips-for-beginners-to-experts-30je#first-commands", keycaps: "", description: "You can sometimes chain flags like ls -la instead of ls -l -a",  cheatsheet_id:  test_cheatsheet.id, os: "Mac OS, Linux", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic Bash Commands 1", is_sample: false, interface: 2, notes: "ls -a", mnemonic: nil, gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1551386937/DevShortcuts/dss/ls-l-1.0.gif", b_color: nil},
  {question: "Find out which directory you're in?", answer: "pwd", citation_title: "101 Bash Commands and Tips for Beginners to Experts", citation_url: "https://dev.to/awwsmm/101-bash-commands-and-tips-for-beginners-to-experts-30je#first-commands", keycaps: "", description: "pwd stands for present working directory.",  cheatsheet_id:  test_cheatsheet.id, os: "Mac OS, Linux", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic Bash Commands 1", is_sample: false, interface: 2, notes: "1", mnemonic: "Imagine a robot vacuum sweeping in a house called \"Presently\"", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1551385871/DevShortcuts/dss/pwd-1.0.gif", b_color: nil},
  {question: "How to get help info on any bash command?", answer: "help pwd", citation_title: "Getting Help with Built-In Bash Shell Commands", citation_url: "https://thehelloworldprogram.com/linux/getting-help-built-in-bash-shell-commands/", keycaps: "", description: "",  cheatsheet_id:  test_cheatsheet.id, os: "Mac OS, Linux", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Basic Bash Commands 1", is_sample: false, interface: 2, notes: "-h", mnemonic: nil, gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1551388113/DevShortcuts/dss/help-pwd-1.0.gif", b_color: nil},
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
