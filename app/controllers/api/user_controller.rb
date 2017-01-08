module Api
	class UserController < ApplicationController
	  skip_before_filter :verify_authenticity_token
	  respond_to :json	

	  def create
		rta = {'respuesta': 1}
		if User.create(:email => params[:email], :password => params[:password])
			render json: rta
		else
			rta = {'respuesta': 0}
			render json: rta
		end				  	
	  end

	  def login
	  	rta = {'respuesta': 1}
	  	user = User.find_by email: params[:email]
	  	if user
	  		if user.password == params[:password]
	  			rta['user_id'] = user.id
	  			rta['user_email'] = user.email
	  		else
	  			rta['user_id'] = 0
	  			rta = {'respuesta': 0}
	  		end
	  	else
	  		rta = {'respuesta': 1}
	  	end
	  	render json: rta
	  end

	  def remember
	  	rta = {'respuesta': 1}
	  	user = User.find_by email: params[:email]
	  	if user
	  		puts "Se debe enviar email al usuario con la clave"
	  	else
	  		rta = {'respuesta': 0}	  		
	  	end
	  	render json: rta	  	
	  end
		
	  def all
	  	render json: User.all
	  end

	  def default_serializer_options
	  	{ root: false }
	  end
	end
end
