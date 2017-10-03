class BooksController < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end
	
	#INDEX - get all the books
	get "/books" do
		"<h1>BOOK VIBES</h1>" 
	end

	#NEW - gets form to create
	get "/books/new" do
		"book form"
	end

	#CREATE - send form to create
	post "/books/" do
		"book form"
	end

	#EDIT - gets form to edit resource
	get "/books/:id/edit" do
		"edit form"
	end

	#UPDATE
	get 'books/:id' do
		"update"
	end

	#DELETE
	get "/books/:id" do
		delete
	end
	
	#SHOW - show a book you want
	get "/books/:id" do
		id = params[:id]
	end

end