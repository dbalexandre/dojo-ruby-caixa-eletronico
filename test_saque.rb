require 'test/unit'
require_relative 'saque'

class TestSaque < Test::Unit::TestCase
  
  def test_saque_dez_reais
    assert_equal(@caixa_eletronico.saque(10), 10)
  end
end
