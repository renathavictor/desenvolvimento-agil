require_relative 'AnalisadorLinha'

linhas = IO.readlines('text.txt')

instacias_analisador = Array.new
numero_linha = 0

linhas.each do |linha|
  numero_linha += 1
  instancia = AnalisadorLinha.new(numero_linha, linha)
  instacias_analisador.push(instancia)
end


def palavras_mais_frequencia_linha(array_analisador)
  # metodo para mostrar as palavras com mais frequencia por linha
  array_analisador.each do |a|
    a.count_frequency_word
    # print a::max_frequency_word
  end

end

palavras_mais_frequencia_linha(instacias_analisador)
