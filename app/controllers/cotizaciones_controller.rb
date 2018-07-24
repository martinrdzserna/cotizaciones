class CotizacionesController < ApplicationController
  before_action :set_cotizacione, only: [:show, :edit, :update, :destroy]

  # GET /cotizaciones
  # GET /cotizaciones.json
  def index
    if params.nil? then params["token"] = 999999 end
    @cotizaciones = Cotizacione.where("token"=>params["token"]).order("paqueteria")
  end

  # GET /cotizaciones/1
  # GET /cotizaciones/1.json
  def show
  end

  # GET /cotizaciones/new
  def new
    @cotizacione = Cotizacione.new
  end

  # GET /cotizaciones/1/edit
  def edit
  end

  # POST /cotizaciones
  # POST /cotizaciones.json
  def create
    @cotizacione = Cotizacione.new(cotizacione_params)

    respond_to do |format|
      if @cotizacione.save
        format.html { redirect_to @cotizacione, notice: 'Cotizacione was successfully created.' }
        format.json { render :show, status: :created, location: @cotizacione }
      else
        format.html { render :new }
        format.json { render json: @cotizacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotizaciones/1
  # PATCH/PUT /cotizaciones/1.json
  def update
    respond_to do |format|
      if @cotizacione.update(cotizacione_params)
        format.html { redirect_to @cotizacione, notice: 'Cotizacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotizacione }
      else
        format.html { render :edit }
        format.json { render json: @cotizacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotizaciones/1
  # DELETE /cotizaciones/1.json
  def destroy
    @cotizacione.destroy
    respond_to do |format|
      format.html { redirect_to cotizaciones_url, notice: 'Cotizacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotizacione
      @cotizacione = Cotizacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cotizacione_params
      params.require(:cotizacione).permit(:token, :paqueteria, :producto, :precio)
    end
end
