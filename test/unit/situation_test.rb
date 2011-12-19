require 'test_helper'

class SituationTest < ActiveSupport::TestCase
  test "situation with no params" do
    situation = Situation.new
    assert !situation.save, "should not save a situation without params"
  end

  test "situation with params" do
    situation = Situation.new(:renda => 1000.00 , :custo => 500.00, :total_devedor => 1000.0, :juros => 15.0, :minimo_fatura => 300.00)
    assert situation.save, "should save a situation with params"
  end

  test "situation with positive renda" do
    situation = Situation.new(:renda => 1000.00)
    assert situation.renda > 0.0, "renda should be positive"
  end

  test "situation with positive custo" do
    situation = Situation.new(:custo => 500.00)
    assert situation.custo > 0.0, "custo should be positive"
  end

  test "situation with positive total devedor" do
    situation = Situation.new(:total_devedor => 1000.00)
    assert situation.total_devedor > 0.0, "total devedor should be positive"
  end

  test "situation with positive juros" do
    situation = Situation.new(:juros => 500.00)
    assert situation.juros > 0.0, "juros should be positive"
  end

  test "situation with positive minimo fatura" do
    situation = Situation.new(:minimo_fatura => 500.00)
    assert situation.minimo_fatura > 0.0, "minimo fatura should be positive"
  end

end
