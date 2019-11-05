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

def name
     
     gugg = 4
    if gugg == 1
		name = 'Botage isch de Beschte vu aellne'
    else 
    	name = 'Ne der isch de allerbeschte'
    end

end


def born

 #birthdate=Date.today

born=[]

 famous_birthdays={
	beethoven: Date.new(1770,12,16),
	brubeck: Date.new(1920,12,6),
	holly: Date.new(1936,9,7),
	richards: Date.new(1943,12,18)
}

famous_birthdays.each do |name, date|
	if date.month == 12
	born << name
	end
	end
	
	born.size



end


end
