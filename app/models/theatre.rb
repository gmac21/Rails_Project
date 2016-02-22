class Theatre < ActiveRecord::Base
	has_many :screenings
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
end
