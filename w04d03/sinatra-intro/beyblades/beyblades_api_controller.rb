class BeybladesApiController < Sinatra::Base

	def new
	end

	configure :development do
		register Sinatra::Reloader
	end

	$blades = [
      { 
          id: 0,
          Name: "Dragoon",
          Blader: "Tyson Granger"
      },
      { 
          id: 1,
          Name: "Dranzer Danger",
          Blader: "Kai Hiwatari"
      },
      { 
          id: 2,
          title: "Galzzly",
          blader: "Gary"
      }
  ]
  
	
	#INDEX
	get "/api/blades" do
		json $blades
	end

	#CREATE
	post "/api/beyblade/" do
		def new
  		@blades = Blades.new(blade_perams)

  	def blade_params
   		params.require(:blades).permit(:name, :blader)
		end


		end
	end


	#UPDATE
	get '/api/beyblade/:id' do
		id = params[:id]
		puts id
	end

	#DELETE
	get "/api/beyblade/:id" do
		delete
	end
	
	#SHOW
	get "/api/beyblade/:id" do
		id = params[:id]
		def show
   @blades = Blades.find(params[:id])
end
	end
	
	
end