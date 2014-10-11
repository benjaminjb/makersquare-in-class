class Challenge
  def alphabet(alphabet,text)
    alphabet = alphabet.downcase.split('')
    text = text.downcase
    counter = {}
    alphabet.each do |x|
      counter[x] = text.count(x)
    end
    if counter.values.reduce(:+).zero?
      return "no matches"
    end
    return counter
  end
end
