class SuperFansController < ApplicationController
  before_action :set_artist
  before_action :set_super_fan, only: [:show, :edit, :update, :destroy]

  # GET /super_fans
  def index
    @super_fans = SuperFan.all
  end

  # GET /super_fans/1
  def show
  end

  # GET /super_fans/new
  def new
    @super_fan = SuperFan.new(artist: @artist)
  end

  # GET /super_fans/1/edit
  def edit
  end

  # POST /super_fans
  def create
    @super_fan = SuperFan.new(super_fan_params)
    @super_fan.artist = @artist

    if @super_fan.save
      redirect_to artist_super_fans_path(@super_fan.artist), notice: 'Super fan was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /super_fans/1
  def update
    if @super_fan.update(super_fan_params)
      redirect_to artist_super_fans_path(@super_fan.artist), notice: 'Super fan was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /super_fans/1
  def destroy
    @super_fan.destroy
    redirect_to artist_super_fans_path(@artist), notice: 'Super fan was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_super_fan
    @super_fan = SuperFan.find(params[:id])
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  # Only allow a trusted parameter "white list" through.
  def super_fan_params
    params.require(:super_fan).permit(:first_name, :last_name, :parole_officer)
  end
end
