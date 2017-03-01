class ConsultationsController < ApplicationController
	def create
		@consultation = Consultation.new
		# json 
		@consultation.status = "confirmed"
	end


	def reject
		@next_round.each do |consultation|
			consultation.status = "rejected"
			consultation.demand.assigned = false
		end
	end

end

 