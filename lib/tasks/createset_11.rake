"Create Set id: 11, 06/09/2019."
task createset11: :environment do
  log = ActiveSupport::Logger.new("log/create_set_11.log")
  start_time = Time.now
  puts "**************************"
  puts "Create Set and Cards id Heroku CLI Commands"
  puts "**************************"
  # constants
  # find and kill old cluster cards
  # and the cluster's cards. get ready to update scoreclusters if there is a cluster1
  cheatsheet1 = Cheatsheet.where(display_name: "Heroku CLI Commands").first
  if cheatsheet1
    old_cheatsheet_id = cheatsheet1.id
    puts "old cheatsheet id was: #{old_cheatsheet_id}"
    cheatsheet1.destroy
    # temp_scoreclusters = Scorecluster.where(cluster_id: old_cluster_id)
    # temp_scorecards = Scorecard.where(cluster_id: old_cluster_id)
  end
  # create new cluster, and add cards back to it.
  test_cheatsheet = Cheatsheet.create!(display_name: "Heroku CLI Commands", image: "heroku-dss.png",
                                 description: "If you use Heroku, these are the commands you'll need and use from your Terminal.",
                                 level: "Basic", card_count: 10, topic: "Heroku", os: "Mac")

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
    {question: "How do I see the configuration variables for a given app?", answer: "heroku config", citation_title: "Heroku CLI Commands", citation_url: "https://devcenter.heroku.com/articles/heroku-cli-commands", keycaps: "", description: "A quick way to see what environmental variables are in a given heroku instance.", cheatsheet_id: test_cheatsheet.id, os: "Mac", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Heroku CLI Commands", is_sample: false, interface: 2, notes: "", mnemonic: "Imagine being able to unlock all the secrets of your application with a single magic word: config.", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1557337983/DevShortcuts/dss/heroku_config.gif", b_color: nil},
    {question: "How do I put my Heroku instance in maintenance mode? Is it already in that mode?", answer: "heroku maintenance", citation_title: "Heroku CLI Commands", citation_url: "https://devcenter.heroku.com/articles/heroku-cli-commands", keycaps: "", description: "heroku maintenance:on will put your app in maintenance mode so you can run rake tasks or other tasks; maintenance:off will reenable your app.", cheatsheet_id: test_cheatsheet.id, os: "Mac", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Heroku CLI Commands", is_sample: false, interface: 2, notes: "", mnemonic: "Imagine a giant robot you could freeze or unfreeze from a light switch.", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1557337275/DevShortcuts/dss/heroku_maintenace.gif", b_color: nil},
    {question: "How do I update Heroku CLI?", answer: "heroku update", citation_title: "Heroku CLI Commands", citation_url: "https://devcenter.heroku.com/articles/heroku-cli-commands", keycaps: "", description: "Will update your version of Heroku CLI to the current version and turn off warnings like \"Warning: heroku update available from 7.22.10 to 7.24.3.\"", cheatsheet_id: test_cheatsheet.id, os: "Mac", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Heroku CLI Commands", is_sample: false, interface: 2, notes: "", mnemonic: "Imagine being able to tell a giant robot to update itself, and every time you did, it would change color.", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1557336874/DevShortcuts/dss/heroku_update.gif", b_color: nil},
    {question: "How do I tell who has access to my heroku app?", answer: "heroku access", citation_title: "Heroku CLI Commands", citation_url: "https://devcenter.heroku.com/articles/heroku-cli-commands", keycaps: "", description: "This will show you what users have access, and at what level,", cheatsheet_id: test_cheatsheet.id, os: "Mac", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Heroku CLI Commands", is_sample: false, interface: 2, notes: "", mnemonic: "Imagine being able to summon all the users that have a key to your app with a single command.", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1557341491/DevShortcuts/dss/heroku_access.gif", b_color: nil},
    {question: "How do I get a list of all my Heroku apps?", answer: "heroku apps", citation_title: "Heroku CLI Commands", citation_url: "https://devcenter.heroku.com/articles/heroku-cli-commands", keycaps: "", description: "This will list all of your Heroku apps, and collaborated apps.", cheatsheet_id: test_cheatsheet.id, os: "Mac", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Heroku CLI Commands", is_sample: false, interface: 2, notes: "", mnemonic: "Imagine seeing a swarm of birds, each calling a name of a single Heroku app flying at you.", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1557341235/DevShortcuts/dss/heroku_apps.gif", b_color: nil},
    {question: "How do I see my Logs in Heroku for a specific application?", answer: "heroku logs --tail", citation_title: "Heroku CLI Commands", citation_url: "https://devcenter.heroku.com/articles/heroku-cli-commands", keycaps: "", description: "--tail will continuously stream logs; --force-colors will colorize the output", cheatsheet_id: test_cheatsheet.id, os: "Mac", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Heroku CLI Commands", is_sample: false, interface: 2, notes: "", mnemonic: "Imagine following (tailing) a giant beast that keeps pooping cryptic messages.", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1557341839/DevShortcuts/dss/heroku_logs_--tail.gif", b_color: nil},
    {question: "How do I get information on a given app?", answer: "Heroku apps:info", citation_title: "Heroku CLI Commands", citation_url: "https://devcenter.heroku.com/articles/heroku-cli-commands", keycaps: "", description: "Shows you dynos, owner, region slug size and more. ", cheatsheet_id: test_cheatsheet.id, os: "Mac", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Heroku CLI Commands", is_sample: false, interface: 2, notes: "", mnemonic: "Imagine being able to ask your favorite superhero for information.", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1557340670/DevShortcuts/dss/heroku_apps_info.gif", b_color: nil},
    {question: "How do I tell which identity I'm using in Heroku?", answer: "heroku auth:whoami", citation_title: "Heroku CLI Commands", citation_url: "https://devcenter.heroku.com/articles/heroku-cli-commands", keycaps: "", description: "Very handy if you use multiple ids (emails) for different clients on Heroku", cheatsheet_id: test_cheatsheet.id, os: "Mac", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Heroku CLI Commands", is_sample: false, interface: 2, notes: "", mnemonic: "Imaging asking your favorite superhero, Who Am I?", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1557339624/DevShortcuts/dss/heroku_auth_whoami.gif", b_color: nil},
    {question: "See a list of all Heroku commands?", answer: "heroku commands", citation_title: "Heroku CLI Commands", citation_url: "https://devcenter.heroku.com/articles/heroku-cli-commands", keycaps: "", description: "This will show you a listing of all Heroku commands. pick a command and reenter it at the Terminal prompt, and add --help to get a rundown on that specific command", cheatsheet_id: test_cheatsheet.id, os: "Mac", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Heroku CLI Commands", is_sample: false, interface: 2, notes: "", mnemonic: "Image being able to control a giant robot that lists all the commands it will respond to every time you hit it with an overripe tomato.", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1557339245/DevShortcuts/dss/heroku_commands.gif", b_color: nil},
    {question: "How do I see the DNS record for a given Heroku application?", answer: "heroku domains", citation_title: "Heroku CLI Commands", citation_url: "https://devcenter.heroku.com/articles/heroku-cli-commands", keycaps: "", description: "Essential for figuring out if you have the correct DNS records on your Heroku App.", cheatsheet_id: test_cheatsheet.id, os: "Mac", answer_type: nil, answer_data: nil, cheatsheet_display_name: "Heroku CLI Commands", is_sample: false, interface: 2, notes: "", mnemonic: "Imagine a colossal giant robot large enough to span entire countries and put a foot in one country and its other foot in a different country (domain). ", gif_url: "https://res.cloudinary.com/flashcommand/image/upload/v1557335887/DevShortcuts/dss/heroku_domains.gif", b_color: nil},
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
