class Project < ApplicationRecord
	belongs_to :kunden
	
	def completed?
       !completed_at.blank?
	end

	def w0_started?
		!w0_started_at.blank?
	end

	def w0_stopped?
		!w0_stopped_at.blank?
	end

end
