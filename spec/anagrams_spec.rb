require_relative '../dr.rb'

describe Anagrams do

  it 'read this test to see what to do' do
    terms = ['meat', 'team', 'eat', 'mate', 'mat']
    anagrams = Anagrams.find(terms)

    expect(anagrams).to be_a(Array)
    expect(anagrams.length).to eq(1)
    expect(anagrams.first.sort.first).to eq('mate')

    terms = ['race', 'care', 'arc', 'car']
    anagrams = Anagrams.find(terms)

    expect(anagrams).to be_a(Array)
    expect(anagrams.length).to eq(2)
    expect(anagrams.first.sort.first).to eq('care')
  end

end
