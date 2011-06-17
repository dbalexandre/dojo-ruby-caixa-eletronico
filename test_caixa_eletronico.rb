require 'test/unit'
require_relative 'caixa_eletronico'

class TestCaixaEletronico < Test::Unit::TestCase

  def setup
    @caixa_eletronico = CaixaEletronico.new
  end

  def test_saque_dez_reais
    assert_equal(@caixa_eletronico.saque(10), {10 => 1})
  end

  def test_saque_vinte_reais
    assert_equal(@caixa_eletronico.saque(20), {20 => 1})
  end

  def test_saque_vinte_cinco_reais
    assert_equal(@caixa_eletronico.saque(25), {20 => 1, 5 => 1})
  end

  def test_saque_trinta_reais
    assert_equal(@caixa_eletronico.saque(30), {20 => 1, 10 => 1})
  end

  def test_saque_quarenta_reais
    assert_equal(@caixa_eletronico.saque(40), {20 => 2})
  end
  
  def test_saque_cinquenta_reais
    assert_equal(@caixa_eletronico.saque(50), {50 => 1})
  end

  def test_saque_cem_reais
    assert_equal(@caixa_eletronico.saque(100), {100 => 1})
  end

end
