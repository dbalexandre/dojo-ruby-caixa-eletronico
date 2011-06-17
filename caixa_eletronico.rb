class CaixaEletronico

  def initialize
    @notas = Hash.new(0)
    @notas_disponiveis = [100, 50, 20, 10, 5]
  end


  def saque(valor)

    return nil unless valor % @notas_disponiveis.last 0

    @notas_disponiveis.each do |nota|
      valor = calcula_quantidade_de_notas(valor, nota) if valor >= nota
    end

    @notas
  end

  private

  def calcula_quantidade_de_notas(valor, nota)
    @notas[nota] = (valor / nota).floor
    valor = valor - nota * @notas[nota] 
  end

end
