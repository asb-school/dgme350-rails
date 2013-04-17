class HomeController < ApplicationController
  def index

  	# Mess with person
  	# thisPerson = Person.new
  	# thisPerson.name = 'john'
   #  thisPerson.gender = 'M'
   #  thisPerson.age = 15
  	# thisPerson.save	

  	# Render all the information in JSON
  	render json: Person.where(name: 'john')

  end
end
