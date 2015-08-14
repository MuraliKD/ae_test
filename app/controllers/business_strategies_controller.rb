class BusinessStrategiesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_business_strategy, only: [:show, :edit, :update, :destroy]

  # GET /business_strategies
  # GET /business_strategies.json
  def index
    @business_strategies = BusinessStrategy.all
  end

  # GET /business_strategies/1
  # GET /business_strategies/1.json
  def show
  end

  # GET /business_strategies/new
  def new
    @business_strategy = BusinessStrategy.new
  end

  # GET /business_strategies/1/edit
  def edit
  end

  # POST /business_strategies
  # POST /business_strategies.json
  def create
    @business_strategy = BusinessStrategy.new(business_strategy_params)
    @business_strategy.user = current_user

    respond_to do |format|
      if @business_strategy.save
        format.html { redirect_to @business_strategy, notice: 'Business strategy was successfully created.' }
        format.json { render :show, status: :created, location: @business_strategy }
      else
        format.html { render :new }
        format.json { render json: @business_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_strategies/1
  # PATCH/PUT /business_strategies/1.json
  def update
    respond_to do |format|
      if @business_strategy.update(business_strategy_params)
        format.html { redirect_to @business_strategy, notice: 'Business strategy was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_strategy }
      else
        format.html { render :edit }
        format.json { render json: @business_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_strategies/1
  # DELETE /business_strategies/1.json
  def destroy
    @business_strategy.destroy
    respond_to do |format|
      format.html { redirect_to business_strategies_url, notice: 'Business strategy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_strategy
      @business_strategy = BusinessStrategy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_strategy_params
      params.require(:business_strategy).permit(:vision, :principles, :business_model, :form_factor, :pricing, :sales, :user_id)
    end
end
