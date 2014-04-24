class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]

  # GET /agents
  def index
    @agents = Agent.all
  end

  # GET /agents/1
  def show
  end

  # GET /agents/new
  def new
    @agent = Agent.new
  end

  # GET /agents/1/edit
  def edit
  end

  # POST /agents
  def create
    @agent = Agent.new(agent_params)

    if @agent.save
      redirect_to @agent, notice: 'Agent was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /agents/1
  def update
    if @agent.update(agent_params)
      redirect_to @agent, notice: 'Agent was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /agents/1
  def destroy
    @agent.destroy
    redirect_to agents_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_agent
    @agent = Agent.find(params[:id])
  end

# Never trust parameters from the scary internet, only allow the white list through.
  def agent_params
    params.require(:agent).permit(:first_name, :last_name, :phone_number)
  end

end
