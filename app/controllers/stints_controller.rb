class StintsController < ApplicationController
  before_action :set_artist
  before_action :set_stint, only: [:show, :edit, :update, :destroy]

  # GET /stints
  def index
    @stints = @artist.stints.order(:start_date => :desc)
  end

  # GET /stints/1
  def show
  end

  # GET /stints/new
  def new
    @stint = Stint.new
    @stint.artist = @artist
  end

  # GET /stints/1/edit
  def edit
  end

  # POST /stints
  def create
    @stint = Stint.new(stint_params)
    @stint.artist = @artist

    if @stint.save
      redirect_to artist_stints_path(@stint.artist), notice: 'Stint was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /stints/1
  def update
    if @stint.update(stint_params)
      redirect_to artist_stints_path(@stint.artist), notice: 'Stint was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /stints/1
  def destroy
    @stint.destroy
    redirect_to artist_stints_path(@artist), notice: 'Stint was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stint
      @stint = Stint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stint_params
      params.require(:stint).permit(:band_id, :start_date, :end_date)
    end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end
end
