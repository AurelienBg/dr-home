class FakeJob < ApplicationJob
  queue_as :default

  # def perform(*args)  with or without args !
  def perform
    puts "I'm starting the fake job"
    sleep 5
    puts "OK I'm done now"
  end
end
