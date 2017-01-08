class NewsExtractsController < ApplicationController
  before_action :set_news_extract, only: [:show, :edit, :update, :destroy]

  # GET /news_extracts
  # GET /news_extracts.json
  def index
    @news_extracts = NewsExtract.all
  end

  # GET /news_extracts/1
  # GET /news_extracts/1.json
  def show
  end

  # GET /news_extracts/new
  def new
    @news_extract = NewsExtract.new
  end

  # GET /news_extracts/1/edit
  def edit
  end

  # POST /news_extracts
  # POST /news_extracts.json
  def create
    @news_extract = NewsExtract.new(news_extract_params)

    respond_to do |format|
      if @news_extract.save
        format.html { redirect_to @news_extract, notice: 'News extract was successfully created.' }
        format.json { render :show, status: :created, location: @news_extract }
      else
        format.html { render :new }
        format.json { render json: @news_extract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_extracts/1
  # PATCH/PUT /news_extracts/1.json
  def update
    respond_to do |format|
      if @news_extract.update(news_extract_params)
        format.html { redirect_to @news_extract, notice: 'News extract was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_extract }
      else
        format.html { render :edit }
        format.json { render json: @news_extract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_extracts/1
  # DELETE /news_extracts/1.json
  def destroy
    @news_extract.destroy
    respond_to do |format|
      format.html { redirect_to news_extracts_url, notice: 'News extract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_extract
      @news_extract = NewsExtract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_extract_params
      params.require(:news_extract).permit(:MediumCategory_id, :title, :content)
    end
end
