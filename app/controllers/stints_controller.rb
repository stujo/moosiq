class StintsController < ApplicationController
  before_action :set_stint, only: [:show, :edit, :update, :destroy]

  # GET /stints
  def index
    @stints = Stint.all
  end

  # GET /stints/1
  def show
  end

  # GET /stints/new
  def new
    @stint = Stint.new
  end

  # GET /stints/1/edit
  def edit
  end

  # POST /stints
  def create
    @stint = Stint.new(stint_params)

    if @stint.save
      redirect_to @stint, notice: 'Stint was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /stints/1
  def update
    if @stint.update(stint_params)
      redirect_to @stint, notice: 'Stint was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /stints/1
  def destroy
    @stint.destroy
    redirect_to stints_url, notice: 'Stint was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stint
      @stint = Stint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stint_params
      params.require(:stint).permit(:band_id, :artist_id, :start_date, :end_date)
    end
end
