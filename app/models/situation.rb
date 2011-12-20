# encoding: utf-8

class Situation < ActiveRecord::Base
  validates_presence_of :renda, :custo, :total_devedor, :fatura, :juros, :minimo_fatura, :message => "não pode estar em branco"
  validates_numericality_of :renda, :custo, :total_devedor, :fatura, :juros, :minimo_fatura, :message => "devem ser números"
end
