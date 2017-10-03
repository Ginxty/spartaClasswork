class StaticController < ApplicationController
	def home
	end

	def hello
		@name = params[:name]
		respond_to do |format|
      format.html do
            # load template as normal
        end
      format.json do
            # render as json instead
           render :json => { message: "hello, #{@name}!" }
      end
    end
	end

	def contact
		render plain: "Contact"
		
	end
	
end