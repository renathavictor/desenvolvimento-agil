require_relative 'AnalisadorLinha'

lines = IO.readlines('text.txt')

instances_array = Array.new
line_number = 0

lines.each do |line|
  line_number += 1
  instance = AnalisadorLinha.new(line_number, line)
  instances_array.push(instance)
end


def palavras_mais_frequencia_linha(array)
  array.each do |a|
    a.count_frequency_word
  end

end

palavras_mais_frequencia_linha(instances_array)
