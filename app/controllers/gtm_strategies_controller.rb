class GtmStrategiesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_gtm_strategy, only: [:show, :edit, :update, :destroy]

  # GET /gtm_strategies
  # GET /gtm_strategies.json
  def index
    @gtm_strategies = GtmStrategy.all
  end

  # GET /gtm_strategies/1
  # GET /gtm_strategies/1.json
  def show
  end

  # GET /gtm_strategies/new
  def new
    @gtm_strategy = GtmStrategy.new
  end

  # GET /gtm_strategies/1/edit
  def edit
  end

  # POST /gtm_strategies
  # POST /gtm_strategies.json
  def create
    @gtm_strategy = GtmStrategy.new(gtm_strategy_params)
    @gtm_strategy.user = current_user

    respond_to do |format|
      if @gtm_strategy.save
        format.html { redirect_to @gtm_strategy, notice: 'Gtm strategy was successfully created.' }
        format.json { render :show, status: :created, location: @gtm_strategy }
      else
        format.html { render :new }
        format.json { render json: @gtm_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gtm_strategies/1
  # PATCH/PUT /gtm_strategies/1.json
  def update
    respond_to do |format|
      if @gtm_strategy.update(gtm_strategy_params)
        format.html { redirect_to @gtm_strategy, notice: 'Gtm strategy was successfully updated.' }
        format.json { render :show, status: :ok, location: @gtm_strategy }
      else
        format.html { render :edit }
        format.json { render json: @gtm_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gtm_strategies/1
  # DELETE /gtm_strategies/1.json
  def destroy
    @gtm_strategy.destroy
    respond_to do |format|
      format.html { redirect_to gtm_strategies_url, notice: 'Gtm strategy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gtm_strategy
      @gtm_strategy = GtmStrategy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gtm_strategy_params
      params.require(:gtm_strategy).permit(:user_id)
    end
end
