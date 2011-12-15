class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|
      t.decimal :renda
      t.decimal :custo
      t.decimal :total_devedor
      t.float :juros
      t.decimal :minimo_fatura

      t.timestamps
    end
  end
end
