require_relative '../lib/cracklepop'

describe CracklePop do
  let(:cp){CracklePop.new()}
  it ' 9 is divisional by 3' do
    expect(cp.divisional_by_three?(9)).to be_true
  end
  it ' 25 is divisional by 5' do
    expect(cp.divisional_by_five?(25)).to be_true
  end
  it ' 30 is divisional by 5 and 3' do 
    expect(cp.divisional_by_fifteen?(30)).to be_true
  end
  it 'should return "CracklePop" if 60 is divisional by 5 and 3' do
    expect(cp.cracklepop(60)).to eq('CracklePop')
  end
  it 'should return "Crackle" if 6 is divisional by 3' do 
    expect(cp.cracklepop(6)).to eq('Crackle')
  end
  it 'should return "Pop" if 50 is divisional 5' do
    expect(cp.cracklepop(50)).to eq('Pop')
  end
  it 'should return 4 cause it does not divisional from 5 or 3' do
    expect(cp.cracklepop(4)).to eq(4)
  end
  it 'returns the expected output for the numbers 1..100' do
    first_hundred = (1..100).map { |n| cp.cracklepop(n).to_s }
    fixture_path = './first100.txt'
    expected = IO.read(fixture_path).split("\n")
    expect(first_hundred).to eq expected
  end
end