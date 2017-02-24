require "csv"

class ParseFileJob < ApplicationJob
  queue_as :default

  def perform

  CSV.foreach("ExtractionMonoTable_CAT18_ToutePopulation_201702230745.csv") do |row|
    # row is an array. For first iteration:
    f = FrenchDoctor.new
    f.carte_pro = row[0]
    f.name = row[1]
    f.save
  end
end
