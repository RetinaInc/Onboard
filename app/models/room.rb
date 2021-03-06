class Room < ActiveRecord::Base

	# association
	belongs_to :user
	has_many :orders

 # this is form the rubygeocoder.org site 
	geocoded_by :address
	after_validation :geocode

	# add in paperclip to save images
	# the hash after 960x300 means we crop the image
	# if we wanted it to be a certain width: "500x"
	#  if we wanted it to be a certain height "x500"
	has_attached_file :image, styles: { large: "960x300#", thumbnail: "50x50" } 
	# we could add yet another option/style if we wanted to

	# validations

	validates :title, presence: true
	validates :address, presence: true
	validates :price, presence: true, numericality: [ greater_than_or_equal_to: 0.5 ]

# we can add many more such as must have image etc have a look online for more

end
