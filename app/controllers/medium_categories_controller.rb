class MediumCategoriesController < ApplicationController
  before_action :set_medium_category, only: [:show, :edit, :update, :destroy]

  # GET /medium_categories
  # GET /medium_categories.json
  def index
    @medium_categories = MediumCategory.all
  end

  # GET /medium_categories/1
  # GET /medium_categories/1.json
  def show
  end

  # GET /medium_categories/new
  def new
    @medium_category = MediumCategory.new
  end

  # GET /medium_categories/1/edit
  def edit
  end

  # POST /medium_categories
  # POST /medium_categories.json
  def create
    @medium_category = MediumCategory.new(medium_category_params)

    respond_to do |format|
      if @medium_category.save
        format.html { redirect_to @medium_category, notice: 'Medium category was successfully created.' }
        format.json { render :show, status: :created, location: @medium_category }
      else
        format.html { render :new }
        format.json { render json: @medium_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medium_categories/1
  # PATCH/PUT /medium_categories/1.json
  def update
    respond_to do |format|
      if @medium_category.update(medium_category_params)
        format.html { redirect_to @medium_category, notice: 'Medium category was successfully updated.' }
        format.json { render :show, status: :ok, location: @medium_category }
      else
        format.html { render :edit }
        format.json { render json: @medium_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medium_categories/1
  # DELETE /medium_categories/1.json
  def destroy
    @medium_category.destroy
    respond_to do |format|
      format.html { redirect_to medium_categories_url, notice: 'Medium category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medium_category
      @medium_category = MediumCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medium_category_params
      params.require(:medium_category).permit(:medium_id, :category_id, :url)
    end
end
