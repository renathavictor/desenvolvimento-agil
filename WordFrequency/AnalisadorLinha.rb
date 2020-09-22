class AnalisadorLinha
  
  attr_accessor :line_number, :line_content, :word_frequency

  def initialize(line_number, line_content)
    @line_number = line_number
    @line_content = line_content
  end

  def count_frequency_word
    to_array = @line_content.scan(/[\wÀ-ú]+/)

    @word_frequency = Hash.new(0)
    to_array.each do |word|
      @word_frequency[word] += 1
    end

    word_frequency.each do |k, v|
      puts "Linha: #{line_number} -> Palavra: #{k} | Frequencia: #{v}" if v == word_frequency.values.max
    end
  end

end