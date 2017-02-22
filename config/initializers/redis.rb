# config/initializers/redis.rb
$redis = Redis.new

url = ENV["REDISCLOUD_URL"]

if url
  Sidekiq.configure_server do |config|
    config.redis = { url: url }
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: url }
  end
  $redis = Redis.new(:url => url)
end
UPDATE YOUR PROCFILE FILE

# Procfile
web: bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -C config/sidekiq.yml
Commit & deploy. Then go to your dashboard to set dynos.
HEROKU CRON JOBS

Use the Heroku Scheduler

HAPPY ASYNCHRONIZING!

