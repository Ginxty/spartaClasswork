class BeybladesController < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end
	
	#INDEX
	get "/beyblade/" do
		"<h1>Hey, Beyblade</h1>" 
	end

	#NEW 
	get "/beyblade/new" do
		"bey form"
	end

	#CREATE
	post "/beyblade/" do
		"book form"
	end

	#EDIT
	get "/beyblade/:id/edit" do
		"edit form"
	end

	#UPDATE
	get 'books/:id' do
		id = params[:id]
    "Blade: #{id}"
	end

	#DELETE
	get "/books/:id" do
		delete
	end
	
	#SHOW
	get "/books/:id" do
		id = params[:id]
	end
	
	
end