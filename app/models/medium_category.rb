class MediumCategory < ActiveRecord::Base
  belongs_to :medium
  belongs_to :category

  def medium_name
  	return self.medium.name
  end

  def category_name
  	return self.category.name
  end  
end
