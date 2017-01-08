module Api
	class MediumCategoryController < ApplicationController
	  skip_before_filter :verify_authenticity_token
	  respond_to :json 	
	  def all
	  	medium_category = MediumCategory.all
	  	render json: medium_category
	  end
	end
end
