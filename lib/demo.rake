demo.rake

desc "Prepare DB for demo"
  task 'demo' do
    Consultation.where("date = ?", Date.today).destroy_all
    Demand.all.each do |demand|
      demand.assigned = false
      demand.forecast = false
      demand.save
    end
  end
end
