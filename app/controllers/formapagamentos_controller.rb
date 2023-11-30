class FormapagamentosController < ApplicationController
  before_action :set_formapagamento, only: %i[ show edit update destroy ]

  # GET /formapagamentos or /formapagamentos.json
  def index
    @formapagamentos = Formapagamento.where(user_id: current_user.id)
  end

  # GET /formapagamentos/1 or /formapagamentos/1.json
  def show
  end

  # GET /formapagamentos/new
  def new
    @formapagamento = Formapagamento.new
  end

  # GET /formapagamentos/1/edit
  def edit
  end

  # POST /formapagamentos or /formapagamentos.json
  def create
    @formapagamento = Formapagamento.new(formapagamento_params)
    @formapagamento.user_id = current_user.id

    respond_to do |format|
      if @formapagamento.save
        format.html { redirect_to formapagamento_url(@formapagamento), notice: "Formapagamento was successfully created." }
        format.json { render :show, status: :created, location: @formapagamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @formapagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formapagamentos/1 or /formapagamentos/1.json
  def update
    respond_to do |format|
      if @formapagamento.update(formapagamento_params)
        format.html { redirect_to formapagamento_url(@formapagamento), notice: "Formapagamento was successfully updated." }
        format.json { render :show, status: :ok, location: @formapagamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @formapagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formapagamentos/1 or /formapagamentos/1.json
  def destroy
    @formapagamento.destroy

    respond_to do |format|
      format.html { redirect_to formapagamentos_url, notice: "Formapagamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formapagamento
      @formapagamento = Formapagamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formapagamento_params
      params.require(:formapagamento).permit(:forma_pagamento, :numero_cartao, :validade_cartao, :codseguranca, :nomeimpresso)
    end
end
