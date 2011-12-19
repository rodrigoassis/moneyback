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
        @valor_disponivel = @situation.renda - @situation.custo
        @proxima_fatura = (@situation.total_devedor - @valor_disponivel) * (1+(@situation.juros/100))
        
        if @proxima_fatura > @valor_disponivel
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
