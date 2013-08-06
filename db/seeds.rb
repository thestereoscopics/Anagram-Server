class Seeds
  def self.import_word
    f = File.open("words") 
    f.each do |line|
      Word.create(word: line.chomp)
    end
  end
end
