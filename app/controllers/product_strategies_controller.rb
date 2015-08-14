class ProductStrategiesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_product_strategy, only: [:show, :edit, :update, :destroy]

  # GET /product_strategies
  # GET /product_strategies.json
  def index
    @product_strategies = ProductStrategy.all
  end

  # GET /product_strategies/1
  # GET /product_strategies/1.json
  def show
  end

  # GET /product_strategies/new
  def new
    @product_strategy = ProductStrategy.new
  end

  # GET /product_strategies/1/edit
  def edit
  end

  # POST /product_strategies
  # POST /product_strategies.json
  def create
    @product_strategy = ProductStrategy.new(product_strategy_params)
    @product_strategy.user = current_user

    respond_to do |format|
      if @product_strategy.save
        format.html { redirect_to @product_strategy, notice: 'Product strategy was successfully created.' }
        format.json { render :show, status: :created, location: @product_strategy }
      else
        format.html { render :new }
        format.json { render json: @product_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_strategies/1
  # PATCH/PUT /product_strategies/1.json
  def update
    respond_to do |format|
      if @product_strategy.update(product_strategy_params)
        format.html { redirect_to @product_strategy, notice: 'Product strategy was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_strategy }
      else
        format.html { render :edit }
        format.json { render json: @product_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_strategies/1
  # DELETE /product_strategies/1.json
  def destroy
    @product_strategy.destroy
    respond_to do |format|
      format.html { redirect_to product_strategies_url, notice: 'Product strategy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_strategy
      @product_strategy = ProductStrategy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_strategy_params
      params.require(:product_strategy).permit(:feature_list, :product_principles, :user_id)
    end
end
