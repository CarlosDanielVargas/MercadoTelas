class WarehousesController < ApplicationController
  before_action :set_warehouse, only: %i[ show edit update destroy ]

  # GET /warehouses or /warehouses.json
  def index
    @warehouses = Warehouse.all
  end

  # GET /warehouses/1 or /warehouses/1.json
  def show
  end

  # GET /warehouses/new
  def new
    @warehouse = Warehouse.new
  end

  # GET /warehouses/1/edit
  def edit
  end

  # POST /warehouses or /warehouses.json
  def create
    @warehouse = Warehouse.new(warehouse_params)

    respond_to do |format|
      if @warehouse.save
        format.html { redirect_to warehouse_url(@warehouse), notice: "Warehouse was successfully created." }
        format.json { render :show, status: :created, location: @warehouse }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /warehouses/1 or /warehouses/1.json
  def update
    respond_to do |format|
      if @warehouse.update(warehouse_params)
        format.html { redirect_to warehouse_url(@warehouse), notice: "Warehouse was successfully updated." }
        format.json { render :show, status: :ok, location: @warehouse }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warehouses/1 or /warehouses/1.json
  def destroy
    @warehouse.destroy

    respond_to do |format|
      format.html { redirect_to warehouses_url, notice: "Warehouse was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warehouse
      @warehouse = Warehouse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def warehouse_params
      params.require(:warehouse).permit(:name)
    end
end
