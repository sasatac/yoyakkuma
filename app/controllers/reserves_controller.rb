class ReservesController < ApplicationController
  before_action :set_reserf, only: [:show, :edit, :update, :destroy]

  # GET /reserves
  # GET /reserves.json
  def index
    @reserves = Reserve.all
  end

  # GET /reserves/1
  # GET /reserves/1.json
  def show
  end

  def reserve_store
#    @reserf = Reserve.where(:customer_id => current_user.id,:store_id => params[:id])
    @reserf = Reserve.find_by(:customer_id => current_user.id,:store_id => params[:id])
    if @reserf.blank?
      @reserf = Reserve.new
    end
  end

  # GET /reserves/new
  def new
    @reserf = Reserve.new
  end

  # GET /reserves/1/edit
  def edit
  end

  # POST /reserves
  # POST /reserves.json
  def create
    @reserf = Reserve.new(reserf_params)

    respond_to do |format|
      if @reserf.save
        format.html { redirect_to @reserf, notice: 'Reserve was successfully created.' }
        format.json { render :show, status: :created, location: @reserf }
      else
        format.html { render :new }
        format.json { render json: @reserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserves/1
  # PATCH/PUT /reserves/1.json
  def update
    respond_to do |format|
      if @reserf.update(reserf_params)
        format.html { redirect_to @reserf, notice: 'Reserve was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserf }
      else
        format.html { render :edit }
        format.json { render json: @reserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserves/1
  # DELETE /reserves/1.json
  def destroy
    @reserf.destroy
    respond_to do |format|
      format.html { redirect_to reserves_url, notice: 'Reserve was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserf
      @reserf = Reserve.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserf_params
      params.require(:reserve).permit(:customer_id, :store_id, :start_datetime, :end_datetime, :memo)
    end
end
