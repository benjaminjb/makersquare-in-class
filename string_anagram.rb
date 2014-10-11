class Challenge
  def self.string_anagram(stringA, stringB)

    a.downcase.split('').sort == b.downcase.split('').sort

  end
end

# javascript solution notes

# if (a.toLowerCase().replace(/\s/g,' ').split('').sort().join('') == b.toLowerCase().replace(/\s/g,' ').split('').sort().join(''))
#   {print("YES")} 
#   else {print("no")}