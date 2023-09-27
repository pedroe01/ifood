class AddEnderecosController < ApplicationController
  before_action :set_add_endereco, only: %i[ show edit update destroy ]

  # GET /add_enderecos or /add_enderecos.json
  def index
    @enderecos = AddEndereco.all
  end

  # GET /add_enderecos/1 or /add_enderecos/1.json
  def show
  end

  # GET /add_enderecos/new
  def new
    @add_endereco = AddEndereco.new
  end

  # GET /add_enderecos/1/edit
  def edit
  end

  # POST /add_enderecos or /add_enderecos.json
  def create
    @add_endereco = AddEndereco.new(add_endereco_params)

    respond_to do |format|
      if @add_endereco.save
        format.html { redirect_to add_endereco_url(@add_endereco), notice: "Endereço adicionado com sucesso." }
        format.json { render :show, status: :created, location: @add_endereco }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @add_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_enderecos/1 or /add_enderecos/1.json
  def update
    respond_to do |format|
      if @add_endereco.update(add_endereco_params)
        format.html { redirect_to add_endereco_url(@add_endereco), notice: "Endereço atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @add_endereco }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @add_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_enderecos/1 or /add_enderecos/1.json
  def destroy
    @add_endereco.destroy

    respond_to do |format|
      format.html { redirect_to add_enderecos_url, notice: "Endereço removido com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_endereco
      @add_endereco = AddEndereco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_endereco_params
      params.require(:add_endereco).permit(:endereco, :tipo_endereco, :complemento, :numero)
    end
end
