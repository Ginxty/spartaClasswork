class BooksController < sinatra::base

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

	put "put/"

	#SHOW - show a book you want
	get "/books/:id" do
		id = params[:id]
	end

end