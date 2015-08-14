class AcquisitionTracksController < ApplicationController
  before_action :set_acquisition_track, only: [:show, :edit, :update, :destroy]

  # GET /acquisition_tracks
  # GET /acquisition_tracks.json
  def index
    @acquisition_tracks = AcquisitionTrack.all
  end

  # GET /acquisition_tracks/1
  # GET /acquisition_tracks/1.json
  def show
  end

  # GET /acquisition_tracks/new
  def new
    @acquisition_track = AcquisitionTrack.new
  end

  # GET /acquisition_tracks/1/edit
  def edit
  end

  # POST /acquisition_tracks
  # POST /acquisition_tracks.json
  def create
    @acquisition_track = AcquisitionTrack.new(acquisition_track_params)

    respond_to do |format|
      if @acquisition_track.save
        format.html { redirect_to @acquisition_track, notice: 'Acquisition track was successfully created.' }
        format.json { render :show, status: :created, location: @acquisition_track }
      else
        format.html { render :new }
        format.json { render json: @acquisition_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acquisition_tracks/1
  # PATCH/PUT /acquisition_tracks/1.json
  def update
    respond_to do |format|
      if @acquisition_track.update(acquisition_track_params)
        format.html { redirect_to @acquisition_track, notice: 'Acquisition track was successfully updated.' }
        format.json { render :show, status: :ok, location: @acquisition_track }
      else
        format.html { render :edit }
        format.json { render json: @acquisition_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acquisition_tracks/1
  # DELETE /acquisition_tracks/1.json
  def destroy
    @acquisition_track.destroy
    respond_to do |format|
      format.html { redirect_to acquisition_tracks_url, notice: 'Acquisition track was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acquisition_track
      @acquisition_track = AcquisitionTrack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acquisition_track_params
      params.require(:acquisition_track).permit(:user, :customer, :market_segmentation_id, :user_activity, :customer_activity, :plan_title, :date_scheduled)
    end
end
