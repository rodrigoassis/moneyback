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
    @proxima_fatura = (@situation.total_devedor - (@situation.renda - @situation.custo)) * (1+@situation.juros)
    
    respond_to do |format|
      if @situation.save
        format.html # create.html.erb
      else
        format.html { render action: "index" }
      end
    end
  end
end
