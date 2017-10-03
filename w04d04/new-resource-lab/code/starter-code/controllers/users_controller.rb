class UsersController < Sinatra::Base

	# sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  $users = [{
      id: 0,
      username: "GingerNinja",
      email: "LiamBoi6969@yahoo.com",
      firstname: "Liam",
      surname: "North"
  },
  {
      id: 1,
      username: "RubberBadgerBoy",
      email: "OllieHoldEm@gmail.com",
      firstname: "Ollie",
      surname: "Holden"
  },
  {
      id: 2,
      username: "Ginxty",
      email: "james.oneill96@gmail.com",
      firstname: "James",
      surname: "O'Neill"
  }];

  get '/users' do

      @username = "Blog users"

      @users = $users
  
      erb :'users/index'
  
  end

  get '/users/new'  do

    # create an empty user
    @user = {
      id: "",
      username: "",
      email: "",
      firstname: "",
      surname: ""
    }

    erb :'users/new'
    
  end
    
  get '/users/:id' do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single user object available in the template
    @user = $users[id]
    
    erb :'users/show'
    
  end
    
  post '/users/' do
    
    new_user = {
      username: params[:username],
      email: params[:email],
      firstname: params[:firstname],
      surname: params[:surname]
    }

    $users.push new_user

    redirect "/users"
    
  end
    
  put '/users/:id'  do
    
    # data is gathered in the params object
    id = params[:id].to_i
      
    # get the user object from our data store
    user = $users[id];
      
    # update the values of the object with data from the request
    user[:username] = params[:username];
    user[:email] = params[:email];
    user[:firstname] = params[:firstname];
    user[:surname] = params[:surname];

      
    # save the user back to our data store ( at the spot it came from this time )
    $users[id] = user;
      
    # redirect the user to a GET route. We'll go back to the INDEX.
    redirect "/users";
    
  end
    
  delete '/users/:id'  do
    
    # get the ID
    id = params[:id].to_i

    # delete the user from the array
    $users.delete_at(id)

    # redirect back to the homepage
    redirect "/users"
    
  end
    
  get '/users/:id/edit'  do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single user object available in the template
    @user = $users[id]

    erb :'users/edit'
    
  end

end
