module Api
	class CategoryController < ApplicationController
	  skip_before_filter :verify_authenticity_token
	  respond_to :json
	  def all
	  	categories = Category.all	  	
	  	render json: categories
	  end
	  def show
	  	render json: Category.find(params[:category_id])
	  end
	  def default_serializer_options
	  	{ root: false }
	  end	  
	end
end
