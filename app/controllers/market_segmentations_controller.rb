class MarketSegmentationsController < ApplicationController
  before_action :set_market_segmentation, only: [:show, :edit, :update, :destroy]

  # GET /market_segmentations
  # GET /market_segmentations.json
  def index
    @market_segmentations = MarketSegmentation.all
  end

  # GET /market_segmentations/1
  # GET /market_segmentations/1.json
  def show
  end

  # GET /market_segmentations/new
  def new
    @market_segmentation = MarketSegmentation.new
  end

  # GET /market_segmentations/1/edit
  def edit
  end

  # POST /market_segmentations
  # POST /market_segmentations.json
  def create
    @market_segmentation = MarketSegmentation.new(market_segmentation_params)

    respond_to do |format|
      if @market_segmentation.save
        format.html { redirect_to @market_segmentation, notice: 'Market segmentation was successfully created.' }
        format.json { render :show, status: :created, location: @market_segmentation }
      else
        format.html { render :new }
        format.json { render json: @market_segmentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_segmentations/1
  # PATCH/PUT /market_segmentations/1.json
  def update
    respond_to do |format|
      if @market_segmentation.update(market_segmentation_params)
        format.html { redirect_to @market_segmentation, notice: 'Market segmentation was successfully updated.' }
        format.json { render :show, status: :ok, location: @market_segmentation }
      else
        format.html { render :edit }
        format.json { render json: @market_segmentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_segmentations/1
  # DELETE /market_segmentations/1.json
  def destroy
    @market_segmentation.destroy
    respond_to do |format|
      format.html { redirect_to market_segmentations_url, notice: 'Market segmentation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_segmentation
      @market_segmentation = MarketSegmentation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_segmentation_params
      params.require(:market_segmentation).permit(:gtm_strategy_id)
    end
end
