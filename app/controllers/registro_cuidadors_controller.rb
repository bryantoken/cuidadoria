class RegistroCuidadorsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_registro_cuidador, only: %i[ show edit update destroy ]

  # GET /registro_cuidadors or /registro_cuidadors.json
  def index
    if current_user.admin?
    @registro_cuidadors = RegistroCuidador.all
  else
    @registro_cuidadors = RegistroCuidador.where(user_id: current_user.id)
  end

  end

  # GET /registro_cuidadors/1 or /registro_cuidadors/1.json
  def show
  end

  # GET /registro_cuidadors/new
  def new
    @registro_cuidador = RegistroCuidador.new
  end

  # GET /registro_cuidadors/1/edit
  def edit
  end

  # POST /registro_cuidadors or /registro_cuidadors.json
  def create
    @registro_cuidador = RegistroCuidador.new(registro_cuidador_params)
    @registro_cuidador.user_id = current_user.id # Associate with current user

    respond_to do |format|
      if @registro_cuidador.save
        format.html { redirect_to registro_cuidador_url(@registro_cuidador), notice: "Registro cuidador was successfully created." }
        format.json { render :show, status: :created, location: @registro_cuidador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro_cuidador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_cuidadors/1 or /registro_cuidadors/1.json
  def update
    respond_to do |format|
      if @registro_cuidador.update(registro_cuidador_params)
        format.html { redirect_to registro_cuidador_url(@registro_cuidador), notice: "Registro cuidador was successfully updated." }
        format.json { render :show, status: :ok, location: @registro_cuidador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro_cuidador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_cuidadors/1 or /registro_cuidadors/1.json
  def destroy
    @registro_cuidador.destroy!

    respond_to do |format|
      format.html { redirect_to registro_cuidadors_url, notice: "Registro cuidador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_cuidador
      @registro_cuidador = RegistroCuidador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registro_cuidador_params
      params.require(:registro_cuidador).permit(:data, :cuidador, :turno_entrada, :turno_saida, :assinatura, :refeicoes, :medicamentos, :atividades_diarias, :observacoes)
    end
end
