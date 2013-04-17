class PersonControllerController < ApplicationController
	thisPerson = Person.new
	thisPerson.name = "bob"
	thisPerson.save	
end
