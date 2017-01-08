module Api
	class MediumController < ApplicationController
	  skip_before_filter :verify_authenticity_token
	  respond_to :json	
	  def all
	  	medium = Medium.all
	  	render json: medium
	  end
	  def show
	  	render json: Medium.find(params[:medium_id])
	  end
	end
end
