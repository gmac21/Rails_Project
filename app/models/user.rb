class User < ActiveRecord::Base
	has_many :bookings
	has_secure_password
end
