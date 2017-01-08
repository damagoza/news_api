module Api
	class NewsExtractController < ApplicationController
	  skip_before_filter :verify_authenticity_token
	  respond_to :json
	  def all
	  	news_extract = NewsExtract.all
	  	render json: news_extract
	  end
	  def news_for_category
	  	news_extract = NewsExtract.where(:MediumCategory_id => MediumCategory.where(:category_id => params[:category_id]))
	  	render json: news_extract	  	
	  end
	  def news_for_medium
	  	news_extract = NewsExtract.where(:MediumCategory_id => MediumCategory.where(:medium_id => params[:medium_id]))
	  	render json: news_extract	  	
	  end
	  def news_for_medium_and_category
	  	news_extract = NewsExtract.where(:MediumCategory_id => MediumCategory.where(:medium_id => params[:medium_id], :category_id => params[:category_id]))
	  	render json: news_extract	  	
	  end
	end
end 
