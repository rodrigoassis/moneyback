# encoding: utf-8

class Situation < ActiveRecord::Base
  validates_presence_of :renda, :custo, :total_devedor, :fatura, :juros, :minimo_fatura, :message => "não pode estar em branco"
  
  validates_numericality_of :renda, :custo, :total_devedor, :fatura, :juros, :minimo_fatura, :allow_nil => true, :message => "deve ser um valor monetário"
end
