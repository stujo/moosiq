class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy]

  skip_before_filter :verify_authenticity_token, only: [:search]

  # GET /tracks
  def index
    @tracks = Track.all
  end

  # GET /tracks/1
  def show
  end

  # GET /tracks/new
  def new
    @track = Track.new
  end

  # GET /tracks/1/edit
  def edit
  end

  def search
    @search = SimpleSearch.new SimpleSearch.get_params(params)
    if @search.valid?
      @tracks = @search.search_within Track.all, :title
    end
  end

  # POST /tracks
  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to @track, notice: 'Track was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tracks/1
  def update
    if @track.update(track_params)
      redirect_to @track, notice: 'Track was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tracks/1
  def destroy
    @track.destroy
    redirect_to tracks_url, notice: 'Track was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def track_params
      params.require(:track).permit(:title, :seconds, :released_on, :band_id, :band_name)
    end
end
