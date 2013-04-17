class UsersController < ApplicationController

	respond_to :json

	def index
		respond_with getAll
	end

	def show
		respond_with getByName
	end

	def create
	    respond_with(addPerson, :location => users_url)
	end

	def update
	end

	def destroy
	end

	# Helper functions
	private

	def getAll
		Person.all
	end

	def getByName
		# Get all people with given name
		results = Person.where(name: params[:id])

		# If no people found, send an error message
		if results.any?
			results
		else
			JSON.load '{"error":"No data found."}'
		end
	end

	def addPerson
		# Save user
		@user = params[:user]

		# Create new person
		person = Person.new

		if @user[:name]
			person.name = @user[:name]
		end

		if @user[:gender]
			person.gender = @user[:gender]
		end

		if @user[:age]
			person.age = @user[:age]
		end

		# Save changes
		person.save

		# Return success json
		JSON.load '{"success": "Hooray!"}'
	end

end
