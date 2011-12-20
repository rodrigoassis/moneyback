# encoding: utf-8

class SituationsController < ApplicationController
  # GET /situations
  # GET /situations.json
  def index
    @situation = Situation.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @situations }
    end
  end
  
  def create
    @situation = Situation.new(params[:situation])
    
    respond_to do |format|
      if @situation.save
      
        # Valor restante para quitar a dívida
        @valor_disponivel = @situation.renda - @situation.custo
        if @valor_disponivel <= 0
        	format.html { render "problem" }
        end
        
        # Calcula a sua dívida (divida passada + fatura desse mes)
        @divida = (@situation.total_devedor) * (1+(@situation.juros/100)) + @situation.fatura
        
        # Verifica se você consegue pagar a dívida em apenas 1 mês
        if @divida > @valor_disponivel
          format.html { render "multiple_months" }
        else
          format.html { render "single_month" }
        end
        
      else
        format.html { render action: "index" }
      end
    end
  end
end
