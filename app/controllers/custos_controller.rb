class CustosController < ApplicationController
  before_action :set_custo, only: %i[ show edit update destroy ]

  # GET /custos or /custos.json
  def index
    @custos = Custo.all
  end

  # GET /custos/1 or /custos/1.json
  def show
  end

  # GET /custos/new
  def new
    @custo = Custo.new
  end

  # GET /custos/1/edit
  def edit
  end

  # POST /custos or /custos.json
  def create
    @custo = Custo.new(custo_params)

    respond_to do |format|
      if @custo.save
        format.html { redirect_to @custo, notice: "Custo was successfully created." }
        format.json { render :show, status: :created, location: @custo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @custo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custos/1 or /custos/1.json
  def update
    respond_to do |format|
      if @custo.update(custo_params)
        format.html { redirect_to @custo, notice: "Custo was successfully updated." }
        format.json { render :show, status: :ok, location: @custo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @custo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custos/1 or /custos/1.json
  def destroy
    @custo.destroy
    respond_to do |format|
      format.html { redirect_to custos_url, notice: "Custo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custo
      @custo = Custo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custo_params
      params.require(:custo).permit(:cost_value, :employee_id, :ordem)
    end
end
