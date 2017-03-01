namespace :routific do
  # desc: "Enrich all user profiles"

  desc "Run routific for next tour"
  task run: :environment do
    # TO DO ..
    # puts "task starting"
    # User.all.each do |user|
    #   user.enrich
    # end

    RoutificfJob.perform_later
    puts "routific enqueue"

    RoutificForecastJob.perform_later
    puts "routific forecast enqueue"
  end
end
