class Room < ActiveRecord::Base

 # this is form the rubygeocoder.org site 
	geocoded_by :address
	after_validation :geocode

	# validations

	validates :title, presence: true
	validates :address, presence: true
	validates :price, presence: true, numericality: [ greater_than_or_equal_to: 0.5 ]

# we can add many more such as must have image etc have a look online for more

end
