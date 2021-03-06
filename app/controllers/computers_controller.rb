class ComputersController < ApplicationController
  before_action :set_computer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /computers
  # GET /computers.json
  def index
    #@computers = Computer.all

        if params[:search].present?
          @computers = Computer.perform_search(params[:search])
        else
          @computers = Computer.all
        end
      end

  

  # GET /computers/1
  # GET /computers/1.json
  def show
  end

  # GET /computers/new
  def new
    @computer = Computer.new
    #@computer = current_user.computers.build
  end

  # GET /computers/1/edit
  def edit
  end

  # POST /computers
  # POST /computers.json
  def create
    # @computer = current_user.computers.build(computer_params)
    @computer = Computer.new(computer_params)
    @computer.user_id = current_user.id
    logger.debug("111111111")
    logger.debug(@computer)
    respond_to do |format|
      if @computer.save
        format.html { redirect_to @computer, notice: 'Computer was successfully created.' }
        format.json { render :show, status: :created, location: @computer }
      else
        format.html { render :new }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computers/1
  # PATCH/PUT /computers/1.json
  def update
    respond_to do |format|
      if @computer.update(computer_params)
        format.html { redirect_to @computer, notice: 'Computer was successfully updated.' }
        format.json { render :show, status: :ok, location: @computer }
      else
        format.html { render :edit }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computers/1
  # DELETE /computers/1.json
  def destroy
    @computer.destroy
    respond_to do |format|
      format.html { redirect_to computers_url, notice: 'Computer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer
      @computer = Computer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computer_params
      params.require(:computer).permit(:title, :price, :description, :finish, :case, :motherboard, :power_supply, :grpahics_card, :cpu, :ram, :hardrive, :image)
    end
end
