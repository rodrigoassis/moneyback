class AddFaturaToSituation < ActiveRecord::Migration
  def change
    add_column :situations, :fatura, :decimal
  end
end
