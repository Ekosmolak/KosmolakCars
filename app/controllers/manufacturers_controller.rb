class ManufacturersController < ApplicationController
  before_action :set_manufacturer, only: %i[ show edit update destroy ]

  # GET /manufacturers or /manufacturers.json
  def index
    if params[:search].present?
      @manufacturer = Manufacturer.where('manufacturer LIKE ?', "%#{params[:search]}%").first

      if @manufacturer
        redirect_to manufacturer_path(@manufacturer) and return
      else
        @manufacturers = Manufacturer.all
        flash.now[:alert] = "No manufacturer found with the name '#{params[:search]}'."
      end
    else
      @manufacturers = Manufacturer.all
    end
  end

  # GET /manufacturers/1 or /manufacturers/1.json
  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  # GET /manufacturers/new
  def new
    @manufacturer = Manufacturer.new
  end

  # GET /manufacturers/1/edit
  def edit
  end

  # POST /manufacturers or /manufacturers.json
  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    respond_to do |format|
      if @manufacturer.save
        format.html { redirect_to @manufacturer, notice: "Manufacturer was successfully created." }
        format.json { render :show, status: :created, location: @manufacturer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manufacturers/1 or /manufacturers/1.json
  def update
    respond_to do |format|
      if @manufacturer.update(manufacturer_params)
        format.html { redirect_to @manufacturer, notice: "Manufacturer was successfully updated." }
        format.json { render :show, status: :ok, location: @manufacturer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manufacturers/1 or /manufacturers/1.json
  def destroy
    @manufacturer.destroy!

    respond_to do |format|
      format.html { redirect_to manufacturers_path, status: :see_other, notice: "Manufacturer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manufacturer
      @manufacturer = Manufacturer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manufacturer_params
      params.require(:manufacturer).permit(:manufacturer)
    end
end